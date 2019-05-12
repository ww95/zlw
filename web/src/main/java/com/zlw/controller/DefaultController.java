package com.zlw.controller;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zlw.bean.*;
import com.zlw.service.*;
import com.zlw.util.UserUtil;
import com.zlw.util.Utils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@Controller
public class DefaultController {
    @Resource(name = "userService")
    private UserService userService;

    @Resource(name = "travelService")
    private TravelService travelService;

    @Resource(name = "orderService")
    private OrderService orderService;

    @Resource(name = "collectionService")
    private CollectionService collectionService;

    @Resource(name = "catalogService")
    private CatalogService catalogService;
    
    @RequestMapping(value = "/index")
    public String index(Map<String,Object> map,@RequestParam(required = false) Integer pageNum){
        Integer index = Utils.pageUtil(pageNum);
        PageHelper.startPage(index,8);
        List<Travel> list = travelService.getList();
        PageInfo pageInfo = PageInfo.of(list);
        map.put("pageInfo",pageInfo);
        map.put("catalogs",catalogService.getAll());
        map.put("hots",list.subList(0,4));
        return "qiantai/index";
    }

    /**
     * 跳转到注册页面
     * @return
     */
    @RequestMapping(value = "/toRegister")
    public String toRegister(){
        return "qiantai/register";
    }

    /**
     * 进行用户注册功能
     * @param map
     * @return
     */
    @RequestMapping(value = "/register")
    public String register(Map<String,Object> map, User user, @RequestParam(required = false) String rePassword){
        System.out.println(user.toString());
        User u = userService.getUserByUserName(user.getUsername());
        if(u!=null){
            map.put("msg","用户信息已被注册，请重新注册信息！！！");
            return "qiantai/index";
        }
        if (!Objects.equals(user.getPassword(),rePassword)){
            map.put("msg","确认密码输入不正确，请重新输入！！！");
            return "qiantai/index";
        }
        userService.addUser(user);
        map.put("username",user.getUsername());
        return "qiantai/loading";
    }

    /**
     * 用户登陆
     * @param map
     * @param user
     * @return
     */
    @RequestMapping("/login")
    public String login(Map<String,Object> map, User user, HttpServletRequest request){
        User u = userService.getUserByUserName(user.getUsername());
        //判断用户是否存在
        if (UserUtil.getInstance().isTrue(u)){
            System.out.println("用户还未注册");
            map.put("msg","该用户未注册，请注册后登陆！！！");
            return "forward:/index";
        }
        /**
         * 判断密码是否正确
         */
        if(!Objects.equals(u.getPassword(),user.getPassword())){
            System.out.println("输入密码不正确");
            map.put("msg","密码输入错误，请重新输入！！！");
            return "forward:/index";
        }
        request.getSession().setAttribute("session_user",u);
        System.out.println("恭喜用户正确");
        return "redirect:user/index";
    }

    /**
     * 详情页
     * @param map
     * @param id
     * @return
     */
    @RequestMapping("/travel-detail")
    public String travelDetail(Map<String,Object> map, @RequestParam(required = false) Integer id,HttpSession session){
        Travel travel = travelService.getById(id);
        System.out.println(travel.toString());
        User user = (User) session.getAttribute("session_user");
        if (user!=null){
            Collections collections = new Collections();
            collections.setTravelId(id);
            collections.setUserId(user.getU_id());
            Collections c = collectionService.getByTravel(collections);
            map.put("collections",c);
        }
        map.put("travel",travel);
        return "qiantai/travel-detail";
    }

    @RequestMapping("/ajax")
    @ResponseBody
    public String ajax(@RequestParam Integer pageNum){
        System.out.println(pageNum);
        Integer index = Utils.pageUtil(pageNum);
        PageHelper.startPage(index,8);
        PageInfo pageInfo = PageInfo.of(travelService.getList());
        Page page = new Page();
        page.setPageNum(pageNum);
        page.setPages(pageInfo.getPages());
        page.setTravelList(pageInfo.getList());
        return JSON.toJSONString(page);
    }

    @RequestMapping("/search")
    @ResponseBody
    public String search(Map<String,Object> map,@RequestParam Integer id,@RequestParam(required = false) Integer pageNum){
        PageHelper.startPage(Utils.pageUtil(pageNum),8);
        PageInfo pageInfo = PageInfo.of(travelService.getListByCatalog(id));
        Page page = new Page();
        page.setPageNum(1);
        page.setPages(pageInfo.getPages());
        page.setTravelList(pageInfo.getList());
        page.setId(id);
        return JSON.toJSONString(page);
    }

    @RequestMapping("/searchByString")
    @ResponseBody
    public String searchByString(@RequestParam String search,@RequestParam(required = false) Integer pageNum){
        System.out.println(search);
        PageHelper.startPage(Utils.pageUtil(pageNum),8);
        PageInfo pageInfo = PageInfo.of(travelService.getBySearch(search));
        Page page = new Page();
        page.setPageNum(1);
        page.setPages(pageInfo.getPages());
        page.setTravelList(pageInfo.getList());
        page.setString(search);
        return JSON.toJSONString(page);
    }
}

package com.zlw.controller;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zlw.bean.Page;
import com.zlw.bean.Travel;
import com.zlw.bean.User;
import com.zlw.service.TravelService;
import com.zlw.service.UserService;
import com.zlw.util.UserUtil;
import com.zlw.util.Utils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@Controller
public class DefaultController {
    @Resource(name = "userService")
    private UserService userService;

    @Resource(name = "travelService")
    private TravelService travelService;
    
    @RequestMapping(value = "/index")
    public String index(Map<String,Object> map,@RequestParam(required = false) Integer pageNum){
        Integer index = Utils.pageUtil(pageNum);
        PageHelper.startPage(index,8);
        PageInfo pageInfo = PageInfo.of(travelService.getList());
        map.put("pageInfo",pageInfo);
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
        System.out.println(user.toString());
        User u = userService.getUserByUserName(user.getUsername());
        //判断用户是否存在
        if (UserUtil.getInstance().isTrue(u)){
            map.put("msg","该用户未注册，请注册后登陆！！！");
            return "forward:/index";
        }
        /**
         * 判断密码是否正确
         */
        if(!user.getPassword().equals(u.getPassword())){
            map.put("msg","密码输入错误，请重新输入！！！");
            return "forward:/index";
        }
        request.getSession().setAttribute("user",u);
        return "redirect:/user/index";
    }
    @RequestMapping("/travel-detail")
    public void travelDetail(Map<String,Object> map, @RequestParam(required = false) Integer id){
        Travel travel = travelService.getById(id);
        System.out.println(travel.toString());
//        return "forward:/index";
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
}

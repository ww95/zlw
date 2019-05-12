package com.zlw.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zlw.bean.Collections;
import com.zlw.bean.Order;
import com.zlw.bean.Travel;
import com.zlw.bean.User;
import com.zlw.service.*;
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
@RequestMapping("/user/")
public class UserController {
    @Resource(name = "userService")
    private UserService userService;

    @Resource(name = "travelService")
    private TravelService travelService;

    @Resource(name = "catalogService")
    private CatalogService catalogService;

    @Resource(name = "orderService")
    private OrderService orderService;

    @Resource(name = "collectionService")
    private CollectionService collectionService;

    /**
     * 首页
     * @param map
     * @param pageNum
     * @return
     */
    @RequestMapping("index")
    public String adminIndex(Map<String,Object> map, @RequestParam(required = false) Integer pageNum){
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
     * 订单中心
     * @param map
     * @param pageNum
     * @return
     */
    @RequestMapping("order-list")
    public String selfIndex(Map<String,Object> map,@RequestParam(required = false) Integer pageNum){
        //获取所有的订单数据
        PageHelper.startPage(Utils.pageUtil(pageNum),5);
        PageInfo pageInfo = PageInfo.of(orderService.getAll());
        map.put("pageInfo",pageInfo);
        return "qiantai/order_list";
    }
    //支付成功
    @RequestMapping("play-order")
    public String playOrder(Map<String,Object> map,@RequestParam(required = false) Integer id,@RequestParam(required = false)Integer pageNum){
        if (null==pageNum||0==pageNum){
            pageNum=1;
        }
        Order order = orderService.getById(id);
        order.setIsPlay(1);
        orderService.edit(order);
        return "redirect:order-list?pageNum="+pageNum;
    }

    /**
     * 收藏中心
     * @param map
     * @return
     */
    @RequestMapping("collection-list")
    public String collection(Map<String,Object> map, @RequestParam(required = false) Integer pageNum, HttpSession session){
        PageHelper.startPage(Utils.pageUtil(pageNum),5);
        User user = (User) session.getAttribute("session_user");
        System.out.println(user.getU_id());
        PageInfo pageInfo = PageInfo.of(collectionService.getAllByUser(user.getU_id()));
        map.put("pageInfo",pageInfo);
        return "qiantai/collection_list";
    }

    @RequestMapping("collection-remove")
    public String collectionRemove(Map<String,Object> map, HttpServletRequest request){
        String[] ids = request.getParameterValues("id");
        if(Objects.equals(ids.length,0)){
            map.put("msg","请勾选要删除的商品");
            return "forward:collection-list";
        }
        for (String string: ids) {
            collectionService.removeById(Integer.parseInt(string));
        }
        return "redirect:collection-list";
    }

    @RequestMapping("collection_remove")
    public String collectionRemove(Map<String,Object> map,@RequestParam(required = false) Integer id,HttpSession session,@RequestParam(required = false) Integer number){
        Collections collections = new Collections();
        collections.setTravelId(id);
        User user = (User) session.getAttribute("session_user");
        collections.setUserId(user.getU_id());
        collectionService.removeByTravelId(collections);
        if (null!=number){
            return "redirect:collection-list";
        }
        return "redirect:/travel-detail?id="+id;
    }

    @RequestMapping("collection-add")
    public String collectionAdd(Map<String,Object> map,HttpSession session,@RequestParam(required = false)Integer id){
        Collections collections = new Collections();
        collections.setTravelId(id);
        User user = (User) session.getAttribute("session_user");
        collections.setUserId(user.getU_id());
        collectionService.addOne(collections);
        System.out.println("收藏成功"+id+"="+user.getU_id());
        return "redirect:/travel-detail?id="+id;
    }



    /**
     * 跳转到修改信息页面
     * @return
     */
    @RequestMapping("to-update-info")
    private String toUpdatInfo(){
        return "qiantai/info-update";
    }

    /**
     * 修改信息
     * @param map
     * @param user
     */
    @RequestMapping("self-info-update")
    @ResponseBody
    private void selfInfoUpdate(Map<String,Object> map, User user){
        userService.editByUserName(user);
        map.put("msg","修改信息成功成功");
    }

    /**
     * 跳转到修改密码页面
     * @return
     */
    @RequestMapping("to-uodate-pwd")
    private String toUodatePwd(){
        return "qiantai/password-update";
    }

    /**
     * 修改密码
     * @param map
     * @param user
     */
    @RequestMapping("self-password-update")
    private String selfPasswordUpdate(Map<String,Object> map, User user,@RequestParam String oldPwd,@RequestParam String rePassword,HttpSession session){
        User user1 = (User) session.getAttribute("session_user");
        if (!user1.getPassword().equals(oldPwd)){
            map.put("msg","原密码输入错误，请重新输入");
            return "forward:to-uodate-pwd";
        }
        if (!user.getPassword().equals(rePassword)){
            map.put("msg","密码输入不一致，请重新输入");
            return "forward:to-uodate-pwd";
        }
        map.put("msg","密码修改完成！！！！！");
        userService.editByUserName(user);
        return "redirect:to-uodate-pwd";
    }

    @RequestMapping("collection-detail")
    public String collectionDetail(Map<String,Object> map,@RequestParam(required = false) Integer id){
        Travel travel = travelService.getById(id);
        System.out.println(travel.toString());
        map.put("travel",travel);
        map.put("catalogs",catalogService.getAll());
        return "qiantai/collection_deatil";
    }

    /**
     * 购买
     * @param map
     * @param number
     * @param session
     * @return
     */
    @RequestMapping("travel-buy")
    public String travelBuy(Map<String,Object> map,@RequestParam(required = false)Integer number, Order order,HttpSession session){
        User user = (User) session.getAttribute("session_user");
        order.setUserId(user.getU_id());
        System.out.println(order.toString());
        orderService.addOne(order);
        if (null!=number&&number==1){
            return "redirect:collection-list";
        }
        return "redirect:/user/index";
    }

    /**
     * 跳转订单页
     * @param map
     * @param id
     * @return
     */
    @RequestMapping("to-travel-buy")
    public String toTravelnBuy(Map<String,Object> map,@RequestParam(required = false)Integer id){
        map.put("travel",travelService.getById(id));
        map.put("time",System.currentTimeMillis());
        return "qiantai/travel-buy";
    }
    @RequestMapping("logout")
    public String logout(Map<String,Object> map,HttpSession session){
        session.setAttribute("session_user",null);
        return "redirect:/index";
    }
}

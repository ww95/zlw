package com.zlw.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
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
import javax.servlet.http.HttpSession;
import java.util.Map;

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
        map.put("travels",travelService.getList());
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
    @ResponseBody
    public void playOrder(Map<String,Object> map,@RequestParam(required = false) Integer id){
        Order order = orderService.getById(id);
        order.setIsPlay(1);
        orderService.edit(order);
    }

    /**
     * 收藏中心
     * @param map
     * @return
     */
    @RequestMapping("collection-list")
    public String collection(Map<String,Object> map, @RequestParam(required = false) Integer pageNum, HttpSession session){
        PageHelper.startPage(Utils.pageUtil(pageNum),5);
        User user = (User) session.getAttribute("user");
        System.out.println(user.getU_id());
        PageInfo pageInfo = PageInfo.of(collectionService.getAllByUser(user.getU_id()));
        map.put("pageInfo",pageInfo);
        return "qiantai/collection_list";
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
    @ResponseBody
    private void selfPasswordUpdate(Map<String,Object> map, User user){
        userService.editByUserName(user);
    }

    @RequestMapping("collection-detail")
    public String collectionDetail(Map<String,Object> map,@RequestParam(required = false) Integer id){
        Travel travel = travelService.getById(id);
        System.out.println(travel.toString());
        map.put("travel",travel);
        map.put("catalogs",catalogService.getAll());
        return "qiantai/collection_deatil";
    }
}

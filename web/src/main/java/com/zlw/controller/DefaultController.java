package com.zlw.controller;

import com.zlw.bean.User;
import com.zlw.service.TravelService;
import com.zlw.service.UserService;
import com.zlw.util.UserUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;
import java.util.Objects;

@Controller
public class DefaultController {
    @Resource(name = "userService")
    private UserService userService;

    @Resource(name = "travelService")
    private TravelService travelService;
    
    @RequestMapping(value = "/index")
    public String index(){
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
    public String register(Map<String,Object> map, User user, @RequestParam(required = false) String repassword){
        System.out.println(user.toString());
        User u = userService.getUserByUserName(user.getUsername());
        if(u!=null){
            map.put("msg","用户信息已被注册，请重新注册信息！！！");
            return "redirect:toRegister";
        }
        if (!Objects.equals(user.getPassword(),repassword)){
            map.put("msg","确认密码输入不正确，请重新输入！！！");
            return "redirect:toRegister";
        }
        userService.addUser(user);
        map.put("username",user.getUsername());
        return "qiantai/loading";
    }

    /**
     * 跳转登陆页面
     * @return
     */
    @RequestMapping(value = "/toLogin")
    public String toLogin(Map<String,Objects> map){
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
        System.out.println(u.toString());
        //判断用户是否存在
        if (UserUtil.getInstance().isTrue(u)){
            map.put("msg","该用户未注册，请注册后登陆！！！");
            return "forward:toLogin";
        }
        /**
         * 判断密码是否正确
         */
        if(!user.getPassword().equals(u.getPassword())){
            map.put("msg","密码输入错误，请重新输入！！！");
            return "redirect:toLogin";
        }
        request.getSession().setAttribute("user",u);
        System.out.println(u.toString());
        return "qiantai/index";
    }

    @RequestMapping("/index")
    public String index(Map<String,Object> map, User user, HttpServletRequest request){
        map.put("travels",travelService.getList());
        return "qiantai/index";
    }
}

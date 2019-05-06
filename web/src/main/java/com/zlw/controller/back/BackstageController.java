package com.zlw.controller.back;

import com.zlw.bean.User;
import com.zlw.service.UserService;
import com.zlw.util.UserUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;
import java.util.Objects;

@Controller
@RequestMapping("/backstage/")
public class BackstageController {

    @Resource(name = "userService")
    private UserService userService;
    @RequestMapping("toLogin")
    public String toLogin(Map<String,Object> map){
        return "houtai/login";
    }


    @RequestMapping("login")
    public String login(Map<String,Object> map, User user, HttpSession session){
        User u = userService.getUserByAdmin(user.getUsername());
        if(UserUtil.getInstance().isTrue(u)){
            map.put("msg","该管理员用户未注册，请注册后登陆");
            System.out.println("该管理员用户未注册，请注册后登陆");
            return "forward:toLogin";
        }
        if(!UserUtil.getInstance().isNormal(u)){
            map.put("msg","该管理员账号状态异常，请及时联系超级管理员！！");
            System.out.println("该管理员账号状态异常，请及时联系超级管理员！！");
            return "forward:toLogin";
        }
        if(!UserUtil.getInstance().equals(u.getPassword(),user.getPassword())){
            map.put("msg","账号或密码输入不正确，请重新输入！！！");
            System.out.println("账号或密码输入不正确，请重新输入！！！");
            return "forward:toLogin";
        }
        session.setAttribute("admin",u);
        return "redirect:/backstage/admin/index";
    }


    @RequestMapping("logout")
    public String logout(Map<String,Object> map,HttpSession session){
        session.setAttribute("admin",null);
        return "redirect:toLogin";
    }
}

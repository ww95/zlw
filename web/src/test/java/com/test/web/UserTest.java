package com.test.web;

import com.zlw.bean.User;
import com.zlw.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-dao.xml","classpath:spring-service.xml"})
public class UserTest {
    @Resource(name = "userService")
    private UserService userService;

    /**
     * 添加用户
     */
    @Test
    public void addUser(){
        User user = new User();
        user.setAddress("中国");
        user.setId_card("123456789654123654");
        user.setTellphone("15264976431");
        user.setSex(1);
        user.setNick_name("王伟");
        user.setPassword("123456");
        user.setUsername("wangwei");
        userService.addUser(user);
        System.out.println(userService.getAll());
    }

    /**
     * 查询用户
     */
    @Test
    public void getUserByUsername(){
        System.out.println(userService.getUserByUserName("wangwei"));
    }
    /**
     * 更新用户
     */
    @Test
    public void updateUser(){

            User user = new User();
            user.setUsername("wangwei");
            user.setPassword("wangwei");
            user.setNick_name("王大大");
            user.setTellphone("12121212121");
            user.setAddress("岳阳");
            userService.editByUserName(user);

    }

    /**
     * 查询所有用户信息
     */
    @Test
    public void getAll(){
        System.out.println(userService.getAll());
    }
}

package com.zlw.util;

import com.zlw.bean.User;

import java.util.Objects;

public class UserUtil {
    private static UserUtil userUtil = new UserUtil();
    private UserUtil(){}
    public static UserUtil getInstance(){
        return userUtil;
    }

    /**
     * 判断用户是否否相同
     * @param user
     * @return
     */
    public Boolean isTrue(User user){
       Boolean flag = false;
       //判断用户名是否为空
       if (Objects.isNull(user)){
           flag = true;
       }
       return flag;
    }

    /**
     * 密码是否相同
     * @return
     */
    public Boolean equals(String username1,String username2){
        Boolean flag = false;
        if(Objects.equals(username1,username2)){
            flag  =true;
        }
        return flag;
    }
    /**
     * 判断用户是否正常
     */
    public Boolean isNormal(User user){
        Boolean flag = false;
        if(Objects.equals(0,user.getIs_normal())){
            flag = true;
        }
        return flag;
    }
}

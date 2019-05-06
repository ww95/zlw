package com.zlw.bean;

import lombok.Data;

/**
 * 用户的实体类 用来存储用户相关信息
 */
@Data
public class User {
    private Integer u_id;
    private String username;
    private String password;
    private String nick_name;
    private Integer sex;
    private String tellphone;
    private String id_card;
    private String address;
    //0表示管理员 1表示用户
    private Integer jurisdiction;
    //表示用户是否正常
    private Integer is_normal;

}

package com.zlw.service;

import com.zlw.bean.User;

import java.util.List;

public interface UserService {
    void addUser(User user);
    User getUserByUserName(String username);
    User getUserByAdmin(String username);
    User getUserById(Integer id);
    void editByUserName(User user);
    List<User> getAll();
}

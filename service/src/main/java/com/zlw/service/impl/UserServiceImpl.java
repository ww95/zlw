package com.zlw.service.impl;

import com.zlw.bean.User;
import com.zlw.dao.UserDao;
import com.zlw.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Objects;

@Service("userService")
public class UserServiceImpl implements UserService{
    @Resource(name = "userDao")
    private UserDao userDao;
    public void addUser(User user) {
        user.setJurisdiction(1);
        userDao.insert(user);
    }

    public User getUserByUserName(String username) {
        return userDao.selectByUserName(username);
    }

    @Override
    public User getUserByAdmin(String username) {
        return userDao.selectByAdmin(username);
    }

    @Override
    public User getUserById(Integer id) {
        return userDao.selectById(id);
    }

    @Override
    public void editByUserName(User user) {
        userDao.updateByUserName(user);
    }

    @Override
    public List<User> getAll() {
        return userDao.selectAll();
    }

}

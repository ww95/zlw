package com.zlw.dao;

import com.zlw.bean.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 用户持久化操作
 */
@Repository("userDao")
public interface UserDao {
    void insert(User user);
    User selectByUserName(String username);
    User selectByAdmin(String username);
    User selectById(Integer id);
    void updateByUserName(User user);
    List<User> selectAll();
}

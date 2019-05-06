package com.zlw.dao;

import com.zlw.bean.Order;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("orderDao")
public interface OrderDao {
    void insertList(List<Order> list);
    void insertOne(Order catalog);
    List<Order> selectAll();
    Order selectOne(Integer id);
    void update(Order order);
    void deleteById(Integer id);
}

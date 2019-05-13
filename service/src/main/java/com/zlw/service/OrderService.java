package com.zlw.service;

import com.zlw.bean.Collections;
import com.zlw.bean.Order;

import java.util.List;

public interface OrderService {
    void addList(List<Order> list);
    void addOne(Order order);
    List<Order> getAll();
    Order getById(Integer id);
    void edit(Order order);
    void removeById(Integer id);
    List<Order> getAllByGroup();
    Integer selectSale();
}

package com.zlw.service.impl;

import com.zlw.bean.Collections;
import com.zlw.bean.Order;
import com.zlw.dao.CollectionDao;
import com.zlw.dao.OrderDao;
import com.zlw.service.CollectionService;
import com.zlw.service.OrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service("orderService")
public class OrderServiceImpl implements OrderService {
    @Resource(name = "orderDao")
    private OrderDao orderDao;

    @Override
    public void addList(List<Order> list) {
        orderDao.insertList(list);
    }

    @Override
    public void addOne(Order order) {
        orderDao.insertOne(order);
    }

    @Override
    public List<Order> getAll() {
        return orderDao.selectAll();
    }

    @Override
    public Order getById(Integer id) {
        return orderDao.selectOne(id);
    }

    @Override
    public void edit(Order order) {
        orderDao.update(order);
    }

    @Override
    public void removeById(Integer id) {
        orderDao.deleteById(id);
    }

    @Override
    public List<Order> getAllByGroup() {
        return orderDao.selectGroup();
    }

    @Override
    public Integer selectSale() {
        return orderDao.selectSale();
    }
}

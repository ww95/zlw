package com.test.web;

import com.zlw.bean.Collections;
import com.zlw.bean.Order;
import com.zlw.dao.OrderDao;
import com.zlw.service.CollectionService;
import com.zlw.service.OrderService;
import org.junit.Test;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

public class OrderTest extends BaseTest {
    @Resource(name = "orderService")
    private OrderService orderService;

    @Test
    public void addList(){
        List<Order> list = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            Order order = new Order();
            order.setComments("哈哈");
            order.setIsPlay(0);
            order.setOrderNumber("3216115161");
            order.setTotalAdultNumber(i);
            order.setTotalChildrenNumber(i);
            order.setTotalPrices(99.0);
            order.setTravelId(1);
            order.setUserId(1);
            list.add(order);
        }
        orderService.addList(list);
    }

    @Test
    public void addOne(){
        Order order = new Order();
        order.setComments("嘻嘻");
        order.setIsPlay(0);
        order.setOrderNumber("3216115161");
        order.setTotalAdultNumber(10);
        order.setTotalChildrenNumber(10);
        order.setTotalPrices(99.0);
        order.setTravelId(1);
        order.setUserId(1);
        orderService.addOne(order);
    }

    @Test
    public void getAll(){
        for (Order order:orderService.getAll()) {
            System.out.println(order.toString());
        }
    }

    @Test
    public void getOne(){
        System.out.println(orderService.getById(1));
    }
    @Test
    public void update(){
        Order order = new Order();
        order.setId(1);
        order.setComments("嘻嘻13");
        order.setIsPlay(0);
        order.setOrderNumber("321611516dsadas1");
        order.setTotalAdultNumber(132);
        order.setTotalChildrenNumber(15);
        order.setTotalPrices(99.0);
        order.setTravelId(1);
        order.setUserId(1);
        orderService.edit(order);
    }

    @Test
    public void delete(){
        orderService.removeById(1);
    }
}

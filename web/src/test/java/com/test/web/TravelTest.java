package com.test.web;

import com.zlw.bean.Travel;
import com.zlw.service.TravelService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-dao.xml","classpath:spring-service.xml"})
public class TravelTest {

    @Resource(name = "travelService")
    private TravelService travelService;
    @Test
    public void addList(){
        List<Travel> list = new ArrayList<>();
        for (int i = 1; i < 11; i++) {
            Travel travel = new Travel();
            travel.setContent("这个地方真个很好看"+i);
            travel.setCost(99.0);
            travel.setCatalogId(5);
            travel.setDestination("海南"+i);
            travel.setDiscount(0.9);
            travel.setTitle("海南三日游"+i);
            travel.setPrice(599.0+i);
            travel.setInfo("这个旅游地方真牛");
            travel.setImgPath("/download/img/ha"+i+".jpg");
            list.add(travel);
        }
        travelService.addTravels(list);
    }

    @Test
    public void addTravel(){
        Travel travel = new Travel();
        travel.setContent("这个地方真个很好看");
        travel.setCost(100.00);
        travel.setCatalogId(5);
        travel.setDestination("海南");
        travel.setDiscount(0.9);
        travel.setTitle("海南三日游");
        travel.setPrice(599.0);
        travel.setInfo("这个旅游地方真牛");
        travel.setImgPath("/download/img/ha.jpg");
        travelService.addTravel(travel);
    }
    @Test
    public void getTravel(){
        System.out.println(travelService.getById(5));
    }
    @Test
    public void update(){
        Travel travel = new Travel();
        travel.setId(4);
        travel.setContent("这个地方真个很好看");
        travel.setCost(100.00);
        travel.setCatalogId(5);
        travel.setDestination("海南");
        travel.setDiscount(0.9);
        travel.setTitle("海南三日游");
        travel.setPrice(599.0);
        travel.setInfo("这个旅游地方真牛");
        travel.setImgPath("/download/img/ha.jpg");
        travelService.edit(travel);
    }
    @Test
    public void delete(){
        travelService.remove(5);
    }
    @Test
    public void getTravels(){
        System.out.println(travelService.getList());
    }
}

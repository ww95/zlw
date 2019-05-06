package com.test.web;

import com.zlw.bean.Collections;
import com.zlw.service.CollectionService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-dao.xml","classpath:spring-service.xml"})
public class CollectionTest {

    @Resource(name = "collectionService")
    private CollectionService collectionService;

    @Test
    public void addList(){
        List<Collections> list = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            Collections collection = new Collections();
            collection.setTravelId(i);
            collection.setUserId(1);
            list.add(collection);
        }
        collectionService.addList(list);
    }

    @Test
    public void addOne(){
        Collections collection = new Collections();
        collection.setTravelId(1);
        collection.setUserId(2);
        collectionService.addOne(collection);
    }

    @Test
    public void getAll(){
        for (Collections collection:collectionService.getAll()) {
            System.out.println(collection.toString());
        }
    }

    @Test
    public void getOne(){
        System.out.println(collectionService.getById(1));
    }
    @Test
    public void update(){
        Collections collection = new Collections();
        collection.setId(11);
        collection.setTravelId(5);
        collection.setUserId(2);
        collectionService.edit(collection);
    }

    @Test
    public void delete(){
        collectionService.removeById(11);
    }
}

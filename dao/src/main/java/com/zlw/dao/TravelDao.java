package com.zlw.dao;

import com.zlw.bean.Travel;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("travelDao")
public interface TravelDao {
    void insertList(List<Travel> list);
    void insertOne(Travel travel);
    List<Travel> selectAll();
    List<Travel> selectAllByCatalog(Integer id);
    List<Travel> selectBySearch(String String);
    Travel selectById(Integer id);
    void update(Travel travel);
    void deleteById(Integer id);
}

package com.zlw.dao;

import com.zlw.bean.Collections;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CollectionDao {
    void insertList(List<Collections> list);
    void insertOne(Collections collection);
    List<Collections> selectAll();
    Collections selectOne(Integer id);
    void update(Collections collection);
    void deleteById(Integer id);
}

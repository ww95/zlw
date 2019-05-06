package com.zlw.dao;

import com.zlw.bean.Catalog;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("catalogDao")
public interface CatalogDao {
    void insertList(List<Catalog> list);
    void insertOne(Catalog catalog);
    List<Catalog> selectAll();
    Catalog selectOne(Integer id);
    void upadte(Catalog catalog);
    void deleteById(Integer id);
}

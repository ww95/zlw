package com.zlw.service;

import com.zlw.bean.Catalog;

import java.util.List;

public interface CatalogService {
    void addCatalogs(List<Catalog> list);
    void addOne(Catalog catalog);
    List<Catalog> getAll();
    Catalog getOne(Integer id);
    void edit(Catalog catalog);
    void removeOne(Integer id);
}

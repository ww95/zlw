package com.zlw.service;

import com.zlw.bean.Collections;

import java.util.List;

public interface CollectionService {
    void addList(List<Collections> list);
    void addOne(Collections collection);
    List<Collections> getAll();
    Collections getById(Integer id);
    void edit(Collections collection);
    void removeById(Integer id);
}
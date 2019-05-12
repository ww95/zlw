package com.zlw.service;

import com.zlw.bean.Collections;

import java.util.List;

public interface CollectionService {
    void addList(List<Collections> list);
    void addOne(Collections collection);
    List<Collections> getAll();
    List<Collections> getAllByUser(Integer id);
    Collections getById(Integer id);
    Collections getByTravel(Collections collections);
    void edit(Collections collection);
    void removeById(Integer id);
    void removeByTravelId(Collections collections);
}

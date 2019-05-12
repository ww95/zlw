package com.zlw.service;

import com.zlw.bean.Travel;

import java.util.List;

public interface TravelService {
    void addTravels(List<Travel> travels);
    void addTravel(Travel travel);
    List<Travel> getList();
    List<Travel> getListByCatalog(Integer id);
    List<Travel> getBySearch(String string);
    Travel getById(Integer id);
    void remove(Integer id);
    void edit(Travel travel);
}

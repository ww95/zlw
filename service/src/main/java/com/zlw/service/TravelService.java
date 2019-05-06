package com.zlw.service;

import com.zlw.bean.Travel;

import java.util.List;

public interface TravelService {
    void addTravels(List<Travel> travels);
    void addTravel(Travel travel);
    List<Travel> getList();
    Travel getById(Integer id);
    void remove(Integer id);
    void edit(Travel travel);
}

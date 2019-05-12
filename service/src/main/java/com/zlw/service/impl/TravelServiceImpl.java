package com.zlw.service.impl;

import com.zlw.bean.Travel;
import com.zlw.dao.TravelDao;
import com.zlw.service.TravelService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("travelService")
public class TravelServiceImpl implements TravelService {
    @Resource(name ="travelDao")
    private TravelDao travelDao;
    @Override
    public void addTravels(List<Travel> travels) {
        travelDao.insertList(travels);
    }

    @Override
    public void addTravel(Travel travel) {
        travelDao.insertOne(travel);
    }

    @Override
    public List<Travel> getList() {
        return travelDao.selectAll();
    }

    @Override
    public List<Travel> getListByCatalog(Integer id) {
        return travelDao.selectAllByCatalog(id);
    }

    @Override
    public List<Travel> getBySearch(String string) {
        return travelDao.selectBySearch(string);
    }

    @Override
    public Travel getById(Integer id) {
        return travelDao.selectById(id);
    }

    @Override
    public void remove(Integer id) {
        travelDao.deleteById(id);
    }

    @Override
    public void edit(Travel travel) {
        travelDao.update(travel);
    }
}

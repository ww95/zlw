package com.zlw.service.impl;

import com.zlw.bean.Collections;
import com.zlw.dao.CollectionDao;
import com.zlw.service.CollectionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("collectionService")
public class CollectionServiceImpl implements CollectionService {
    @Resource(name = "collectionDao")
    private CollectionDao collectionDao;
    @Override
    public void addList(List<Collections> list) {
        collectionDao.insertList(list);
    }

    @Override
    public void addOne(Collections collection) {
        collectionDao.insertOne(collection);
    }

    @Override
    public List<Collections> getAll() {
        return collectionDao.selectAll();
    }

    @Override
    public List<Collections> getAllByUser(Integer id) {
        return collectionDao.selectAllByUser(id);
    }

    @Override
    public Collections getById(Integer id) {
        return collectionDao.selectOne(id);
    }

    @Override
    public Collections getByTravel(Collections collections) {
        return collectionDao.selectByTravel(collections);
    }

    @Override
    public void edit(Collections collection) {
        collectionDao.update(collection);
    }

    @Override
    public void removeById(Integer id) {
        collectionDao.deleteById(id);
    }

    @Override
    public void removeByTravelId(Collections collections) {
        collectionDao.deleteByTravelId(collections);
    }
}

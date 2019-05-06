package com.zlw.service.impl;

import com.zlw.bean.Catalog;
import com.zlw.dao.CatalogDao;
import com.zlw.service.CatalogService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("catalogService")
public class CatalogServiceImpl implements CatalogService {
    @Resource(name = "catalogDao")
    private CatalogDao catalogDao;
    @Override
    public void addCatalogs(List<Catalog> list) {
        catalogDao.insertList(list);
    }

    @Override
    public void addOne(Catalog catalog) {
        catalogDao.insertOne(catalog);
    }

    @Override
    public List<Catalog> getAll() {
        return catalogDao.selectAll();
    }

    @Override
    public Catalog getOne(Integer id) {
        return catalogDao.selectOne(id);
    }

    @Override
    public void edit(Catalog catalog) {
        catalogDao.upadte(catalog);
    }

    @Override
    public void removeOne(Integer id) {
        catalogDao.deleteById(id);
    }
}

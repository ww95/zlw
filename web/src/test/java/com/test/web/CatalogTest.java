package com.test.web;

import com.zlw.bean.Catalog;
import com.zlw.service.CatalogService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-dao.xml","classpath:spring-service.xml"})
public class CatalogTest {
    @Resource(name = "catalogService")
    private CatalogService catalogService;

    /**
     * 添加多个标题信息
     */
    @Test
    public void addCatalogList(){
        List<Catalog> list = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            Catalog catalog = new Catalog();
            catalog.setTitle("这是我的第"+i+"级标题");
            list.add(catalog);
        }
        catalogService.addCatalogs(list);
        System.out.println(catalogService.getAll().toString());
    }

    /**
     * 只添加一个
     */
    @Test
    public void addOneCatalogg(){
        Catalog catalog =new Catalog();
        catalog.setTitle("这是我重新添加的数据");
        catalogService.addOne(catalog);
        System.out.println(catalogService.getAll().toString());
    }
    /**
     * 查询所有数据
     */
    @Test
    public void selectAll(){
        List<Catalog> list = catalogService.getAll();
        for (Catalog c:list) {
            System.out.println(c.toString());
        }
        System.out.println(catalogService.getAll().toString());
    }

    /**
     * 查询一个数据信息
     */
    @Test
    public void selectOne(){
        Catalog catalog = catalogService.getOne(1);
        System.out.println(catalog.toString());
    }

    /**
     * 删除分类信息数据
     */
    @Test
    public void deleteCatalog(){
        catalogService.removeOne(1);
        System.out.println(catalogService.getAll().toString());
    }

    /**
     * 更新数据
     */
    @Test
    public void update(){
        for (int i = 0; i < 10; i++) {
            Catalog catalog = new Catalog();
            catalog.setId(i);
            catalog.setTitle("这是更改信息"+i);
            catalogService.edit(catalog);
        }
        System.out.println(catalogService.getAll().toString());
    }
}

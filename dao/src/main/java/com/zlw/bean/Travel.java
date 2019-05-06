package com.zlw.bean;

import lombok.Data;

/**
 * 旅游地实体类
 */
@Data
public class Travel {
    private Integer id;
    private String title;
    private Integer catalogId;
    private String destination;
    private Double price;
    private Double discount;
    private Double cost;
    private String info;
    private String imgPath;
    private String content;
    private Catalog catalog;

}

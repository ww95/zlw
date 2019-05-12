package com.zlw.bean;

import lombok.Data;

import java.util.List;

@Data
public class Page {
    private Integer pageNum;
    private Integer pages;
    private List<Travel> travelList;
    private Integer id;
    private String string;
}

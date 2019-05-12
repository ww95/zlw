package com.zlw.bean;

import lombok.Data;

import java.util.Date;

@Data
public class Order {
    private Integer id;
    private String orderNumber;
    private Integer userId;
    private Integer travelId;
    private Integer totalAdultNumber;
    private Integer totalChildrenNumber;
    private Date date;
    private Double totalPrices;
    private Integer isPlay;
    private String comments;
    private User user;
    private Travel travel;
}

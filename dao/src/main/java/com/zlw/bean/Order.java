package com.zlw.bean;

import lombok.Data;

@Data
public class Order {
    private Integer id;
    private String orderNumber;
    private Integer userId;
    private Integer travelId;
    private Integer totalAdultNumber;
    private Integer totalChildrenNumber;
    private Double totalPrices;
    private Integer isPlay;
    private String comments;
    private User user;
    private Travel travel;
}

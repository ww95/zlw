package com.zlw.bean;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;


@Data
public class Order {
    private Integer id;
    private String orderNumber;
    private Integer userId;
    private Integer travelId;
    private Integer totalAdultNumber;
    private Integer totalChildrenNumber;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd",timezone="GMT+8")
    private Date date;
    private Double totalPrices;
    private Integer isPlay;
    private String comments;
    private Double sum_totail;
    private User user;
    private Travel travel;
}

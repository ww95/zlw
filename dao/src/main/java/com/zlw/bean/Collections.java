package com.zlw.bean;

/**
 * 收藏实体类
 */

import lombok.Data;

@Data
public class Collections {
    private Integer id;
    private Integer userId;
    private Integer travelId;
    private User user;
    private Travel travel;
}

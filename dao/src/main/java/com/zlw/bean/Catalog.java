package com.zlw.bean;

/**
 * 分类实体类
 */

import lombok.Data;

/**
 * create table first_class(
 *                             id_one int primary key auto_increment comment '一级分类id',
 *                             title_one varchar(20) comment '一级分类标题'
 * );
 */
@Data
public class Catalog {
    private Integer id;
    private String title;
}

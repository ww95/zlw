package com.zlw.util;

public class Utils {
    public static Integer pageUtil(Integer pageNum){
        Integer index = pageNum;
        if (null==index||0==index){
            index = 1;
        }
        return index;
    }
}

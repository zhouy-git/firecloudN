package com.firecloud.function.sys.common;

public class Constast {

    public static final Integer OK  = 200;

    public static final Integer ERROR = -1;

    /**
     * 菜单权限类型
     */
    public static final String TYPE_MENU = "menu";
    public static final String TYPE_PERMISSION = "permission";


    /**
     * 可以状态
     */
    public static final Integer AVAILABLE_TRUE = 1;
    public static final Integer AVAILABLE_FALSE = 0;

    /**
     * 用户类型
     * 0：超级管理员
     * 1: 普通用户
     */
    public static final Integer USER_TYPE_SUPER = 0;
    public static final Integer USER_TYPE_NORMAL = 1;

    /**
     * 展开类型
     */
    public static final Integer OPEN_TRUE = 1;
    public static final Integer OPEN_FALSE = 0;

    /**
     * 默认密码
     */
    public static final Object USER_DEFAULT_PWD = "123456";


    /**
     * 设备名称
     */
    public static final String YANAGN = "烟感";
    public static final String RANQI = "燃气报警器";
    public static final String SHUIYAN = "水压表";
    public static final String WENGAN = "温感";
    public static final String XIAOHUOSUAN = "消火栓";

}

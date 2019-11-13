package com.firecloud.function.sys.domain;

import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 *  设备信息表
 * </p>
 *
 * @author zhouy
 * @since 2019-10-30
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class Equipment implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 主键id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private String id;

    /**
     * 设备ID
     */
    private String devid;

    /**
     * 名称
     */
    private String devicename;

    /**
     * 状态
     */
    private Integer status;

    /**
     * 建筑模型
     */
    private String devicemodel;


    private String underbuild;

    /**
     * 楼层区域
     */
    private String floorarea;

    /**
     * 安装位置
     */
    private String installlocation;

    /**
     * 联网状态
     */
    private Integer networkstate;

    /**
     * 设备状态
     */
    private Integer devicestatus;

    /**
     * 入网时间
     */
    private Date nettime;

    /**
     * 设备名称id，根据下拉选对应的id
     */
    private Integer dnameid;



    /**
     * 设备状态名称
     */
    @TableField(exist = false)
    private String statusName;

}

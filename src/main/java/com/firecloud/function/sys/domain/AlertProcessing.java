package com.firecloud.function.sys.domain;

import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import java.util.Date;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author zhouy
 * @since 2019-11-08
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class AlertProcessing implements Serializable {

    private static final long serialVersionUID=1L;

    @TableId("ID")
    private Integer id;

    /**
     * 设备id
     */
    @TableField("DEV_ID")
    private String devId;

    /**
     * 设备名称
     */
    @TableField("DEV_NAME")
    private String devName;

    /**
     * 设备状态
     */
    @TableField("DEV_STATUS")
    private String devStatus;

    /**
     * 设备型号
     */
    @TableField("UNIT_TYPE")
    private String unitType;

    /**
     * 安装位置
     */
    @TableField("LOCATION")
    private String location;

    /**
     * 所属建筑
     */
    @TableField("UNDERBUILDING")
    private String underbuilding;

    /**
     * 楼层区域
     */
    @TableField("FLOORAREA")
    private String floorarea;

    /**
     * 报警时间
     */
    @TableField("ALARMTIME")
    private Date alarmtime;

    /**
     * 报警内容
     */
    @TableField("ALARMCONTENT")
    private String alarmcontent;

    /**
     * 是否处理
     */
    @TableField("ISDEAL")
    private String isdeal;

    /**
     * 处理人
     */
    @TableField("DEALPEOPLE")
    private String dealpeople;

    /**
     * 处理时间
     */
    @TableField("DEALTIME")
    private Date dealtime;

    /**
     * 报警类型
     */
    @TableField("ALREAM_TYPE")
    private String alreamType;


    @TableField("DEAFULT")
    private String deafult;
}

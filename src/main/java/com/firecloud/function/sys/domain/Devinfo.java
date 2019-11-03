package com.firecloud.function.sys.domain;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author zhouy
 * @since 2019-10-23
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("DEVINFO")
public class Devinfo implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 设备编号
     */
    @TableId("DEV_ID")
    private String devId;

    /**
     * 设备状态
     */
    @TableField("DEV_STATUS")
    private String devStatus;

    /**
     * 设备浓度
     */
    @TableField("DEV_DES_PER")
    private String devDesPer;

    /**
     * 网络频点
     */
    @TableField("NET_ID")
    private String netId;

    /**
     * 信号强度
     */
    @TableField("SIGNAL_DES")
    private String signalDes;

    /**
     * 日期
     */
    @TableField("DATA_DATE")
    private String dataDate;

    /**
     * 时间
     */
    @TableField("DATA_TIME")
    private String dataTime;


    /**
     * 设备状态名称
     */
    @TableField(exist = false)
    private String devstatusname;


}

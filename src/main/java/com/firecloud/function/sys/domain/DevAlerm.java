package com.firecloud.function.sys.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
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
 * @since 2019-11-07
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class DevAlerm implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 设备id
     */
    private String devId;

    /**
     * 设备状态
     */
    private String devStatus;

    /**
     * 信号强度
     */
    private String signalDes;

    /**
     * 网络频点
     */
    private String netId;

    /**
     * 设备浓度
     */
    private String devDesPer;

    /**
     * 报警时间
     */
    private Date netDate;

    @TableField(exist = false)
    private String statusName;

}

package com.firecloud.function.sys.vo;


import com.firecloud.function.sys.domain.AlertProcessing;
import com.firecloud.function.sys.domain.Notice;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;


@Data
@EqualsAndHashCode(callSuper = false)
public class AlertProcessingVo extends AlertProcessing {

    private static final long serialVersionUID = 1L;

    private Integer page = 1;

    private Integer limit = 10;

    /**
     * 接收id数组
     */
    private Integer[] ids;
    /**
     * 前端传过来的日期需要进行格式化，否则会报错
     */
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date startTime;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date endTime;

}

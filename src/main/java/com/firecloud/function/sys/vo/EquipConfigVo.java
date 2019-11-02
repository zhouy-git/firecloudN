package com.firecloud.function.sys.vo;


import com.firecloud.function.sys.domain.EquipConfig;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class EquipConfigVo extends EquipConfig {

    private static final long serialVersionUID = 1L;

    private Integer page = 1;

    private Integer limit = 10;

    /**
     * 接收id数组
     */
    private Integer[] ids;

}

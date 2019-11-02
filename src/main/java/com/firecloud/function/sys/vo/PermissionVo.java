package com.firecloud.function.sys.vo;


import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class PermissionVo extends com.firecloud.function.sys.domain.Permission {

    private static final long serialVersionUID = 1L;

    private Integer page = 1;

    private Integer limit = 10;


}

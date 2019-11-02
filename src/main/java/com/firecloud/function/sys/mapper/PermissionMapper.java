package com.firecloud.function.sys.mapper;

import com.firecloud.function.sys.domain.Permission;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.io.Serializable;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author 老雷
 * @since 2019-10-12
 */
public interface PermissionMapper extends BaseMapper<Permission> {


    void deleteRolePermissionById(@Param("id") Serializable id);
}

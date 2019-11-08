package com.firecloud.function.sys.service;

import com.firecloud.function.sys.domain.Permission;
import com.baomidou.mybatisplus.extension.service.IService;

import java.io.Serializable;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zhouy
 * @since 2019-10-12
 */
public interface PermissionService extends IService<Permission> {

     Permission savePermission(Permission entity);
     Permission updatePermissionById(Permission entity);
     Permission getPermissionById(Serializable id);
}

package com.firecloud.function.sys.service.impl;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.firecloud.function.sys.domain.Permission;
import com.firecloud.function.sys.mapper.PermissionMapper;
import com.firecloud.function.sys.service.PermissionService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.Collection;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author 老雷
 * @since 2019-10-12
 */
@Service
@Transactional
public class PermissionServiceImpl extends ServiceImpl<PermissionMapper, Permission> implements PermissionService {

    @Override
    @CacheEvict(cacheNames = "permission", key = "#id")
    public boolean removeById(Serializable id) {

        this.getBaseMapper().deleteRolePermissionById(id);

        return super.removeById(id);
    }


    @Override
    @CachePut(cacheNames = "permission", key = "#result.id")
    public Permission savePermission(Permission entity) {
        Permission permission = new Permission();
        super.save(permission);
        BeanUtils.copyProperties(entity, permission);
        return permission;
    }

    @Override
    @CachePut(cacheNames = "permission", key = "#entity.id")
    public Permission updatePermissionById(Permission entity) {
        //处理vo对象
        Permission permission = new Permission();
        super.updateById(entity);
        BeanUtils.copyProperties(entity, permission);
        return permission;
    }

    @Override
    public Permission getPermissionById(Serializable id) {
        return null;
    }

    @Override
    @Cacheable(cacheNames = "permission", key = "#id") //如果存在就不会再存
    public Permission getById(Serializable id) {
        return super.getById(id);
    }

    @Override
    public IPage<Permission> page(IPage<Permission> page, Wrapper<Permission> queryWrapper) {
        return super.page(page, queryWrapper);
    }
}

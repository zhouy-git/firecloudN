package com.firecloud.function.sys.service.impl;

import com.firecloud.function.sys.domain.Permission;
import com.firecloud.function.sys.mapper.PermissionMapper;
import com.firecloud.function.sys.service.PermissionService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;

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
    public boolean removeById(Serializable id) {

        this.getBaseMapper().deleteRolePermissionById(id);

        return super.removeById(id);
    }
}

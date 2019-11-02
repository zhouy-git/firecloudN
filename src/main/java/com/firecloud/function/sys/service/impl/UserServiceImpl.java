package com.firecloud.function.sys.service.impl;

import com.firecloud.function.sys.domain.User;
import com.firecloud.function.sys.mapper.RoleMapper;
import com.firecloud.function.sys.mapper.UserMapper;
import com.firecloud.function.sys.service.UserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zhouy
 * @since 2019-10-12
 */
@Service
@Transactional
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {


    @Override
    public boolean save(User entity) {
        return super.save(entity);
    }


    @Override
    public boolean updateById(User entity) {
        return super.updateById(entity);
    }


    @Override
    public User getById(Serializable id) {
        return super.getById(id);
    }

    @Override
    public boolean removeById(Serializable id) {

        this.getBaseMapper().deleteRoleUserById(id);

        return super.removeById(id);
    }
}

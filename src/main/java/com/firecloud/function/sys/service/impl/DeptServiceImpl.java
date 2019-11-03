package com.firecloud.function.sys.service.impl;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.firecloud.function.sys.domain.Dept;
import com.firecloud.function.sys.mapper.DeptMapper;
import com.firecloud.function.sys.service.DeptService;
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
 * @since 2019-10-22
 */
@Service
@Transactional
public class DeptServiceImpl extends ServiceImpl<DeptMapper, Dept> implements DeptService {


    @Override
    public Dept getById(Serializable id) {
        return super.getById(id);
    }

    @Override
    public boolean save(Dept entity) {
        return super.save(entity);
    }

    @Override
    public Dept getOne(Wrapper<Dept> queryWrapper, boolean throwEx) {
        return super.getOne(queryWrapper, throwEx);
    }

    @Override
    public boolean updateById(Dept entity) {
        return super.updateById(entity);
    }

    @Override
    public boolean removeById(Serializable id) {
        return super.removeById(id);
    }
}

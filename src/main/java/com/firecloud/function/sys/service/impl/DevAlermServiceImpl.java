package com.firecloud.function.sys.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.firecloud.function.sys.domain.DevAlerm;
import com.firecloud.function.sys.domain.Devinfo;
import com.firecloud.function.sys.mapper.DevAlermMapper;
import com.firecloud.function.sys.service.DevAlermService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.Arrays;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zhouy
 * @since 2019-11-07
 */
@Service
public class DevAlermServiceImpl extends ServiceImpl<DevAlermMapper, DevAlerm> implements DevAlermService {


    @Override
    public Integer getAlermCount(String type) {
        QueryWrapper<DevAlerm> queryWrapper = new QueryWrapper<>();
        if (type !=null && type=="fire") {
            queryWrapper.lambda().eq(DevAlerm::getDevStatus, 4);
        }else if (type !=null && type=="gz") {
            queryWrapper.lambda().in(DevAlerm::getDevStatus, 3, 7, 11, 15);
        }else if (type !=null && type=="yc"){
            queryWrapper.lambda().in(DevAlerm::getDevStatus, 2, 9, 10);
        }else {
            queryWrapper.lambda().notIn(DevAlerm::getDevStatus, Arrays.asList(0,1,5,6,8,12,13,14));
        }

        return  this.getBaseMapper().getAlermCount(queryWrapper);
    }
}

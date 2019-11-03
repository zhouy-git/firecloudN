package com.firecloud.function.sys.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.firecloud.function.sys.common.Constast;
import com.firecloud.function.sys.domain.Devinfo;
import com.firecloud.function.sys.mapper.DevinfoMapper;
import com.firecloud.function.sys.service.DevinfoService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zhouy
 * @since 2019-10-23
 */
@Service
public class DevinfoServiceImpl extends ServiceImpl<DevinfoMapper, Devinfo> implements DevinfoService {

    public List<Devinfo> GetDevAlllist(Integer statusId) {
        QueryWrapper<Devinfo> queryWrapper = new QueryWrapper<>();

        if (statusId == Constast.NORMARL) {
            queryWrapper.lambda().ne(Devinfo::getDevStatus, statusId);
        }else {
            queryWrapper.lambda().eq(Devinfo::getDevStatus, statusId);
        }
        List<Devinfo> list = this.getBaseMapper().selectList(queryWrapper);
        return list;
    }
}

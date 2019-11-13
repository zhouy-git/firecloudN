package com.firecloud.function.sys.service.impl;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.firecloud.function.sys.common.Constast;
import com.firecloud.function.sys.domain.Devinfo;
import com.firecloud.function.sys.domain.Equipment;
import com.firecloud.function.sys.domain.User;
import com.firecloud.function.sys.mapper.EquipmentMapper;
import com.firecloud.function.sys.service.DevinfoService;
import com.firecloud.function.sys.service.EquipmentService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.List;


/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zhouy
 * @since 2019-10-30
 */
@Service
@Transactional
public class EquipmentServiceImpl extends ServiceImpl<EquipmentMapper, Equipment> implements EquipmentService {

    @Autowired
    private DevinfoService devinfoService;

    /**
     * 根据前台添加页面选择的设备名称id获取设备名
     */
    private String deviName ;
    public String getDnameByDId(Integer did) {

        if (did == 0) {
            deviName = Constast.YANAGN;
        }else if (did == 1) {
            deviName = Constast.RANQI;
        }else if (did == 2) {
            deviName = Constast.SHUIYAN;
        }else if (did == 3) {
            deviName = Constast.WENGAN;
        }else if (did == 4) {
            deviName = Constast.XIAOHUOSUAN;
        }
        return deviName;
    }

    @Override
    @CachePut(cacheNames = "equipment", key = "#entity.devid")
    public Equipment saveEquipment(Equipment entity) {
        Equipment equipment = new Equipment();
        super.save(entity);
        BeanUtils.copyProperties(equipment, entity);
        return equipment;
    }

    @Override
    @CachePut(cacheNames = "equipment", key = "#entity.devid")
    public Equipment updateEquipmentById(Equipment entity) {
        Equipment equipment = new Equipment();
        super.updateById(entity);
        BeanUtils.copyProperties(equipment, entity);
        return equipment;
    }

    @Override
    @Cacheable(cacheNames = "eequipment", key = "#devid")
    public Equipment getEquipmentByDevId(String devid) {
        return this.getBaseMapper().getEquipmentByDevId(devid);
    }

    @Override
    @CacheEvict(cacheNames = "eequipment", key = "#id")
    public boolean removeById(Serializable id) {
        return super.removeById(id);
    }

    @Override
    @Cacheable(cacheNames = "eequipment", key = "#id")
    public Equipment getById(Serializable id) {
        return super.getById(id);
    }

}

package com.firecloud.function.sys.service.impl;

import com.firecloud.function.sys.domain.EquipConfig;
import com.firecloud.function.sys.mapper.EquipConfigMapper;
import com.firecloud.function.sys.service.EquipConfigService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zhouy
 * @since 2019-10-31
 */
@Service
@Transactional
public class EquipConfigServiceImpl extends ServiceImpl<EquipConfigMapper, EquipConfig> implements EquipConfigService {


    @Override
    @CacheEvict(cacheNames = "eequipConfig", key = "#id")
    public boolean removeById(Serializable id) {
        return super.removeById(id);
    }

    @Override
    @Cacheable(cacheNames = "equipConfig", key = "#id")
    public EquipConfig getEquipConfigById(Serializable id) {
        return super.getById(id);
    }

    @Override
    @CachePut(cacheNames = "equipConfig", key = "#entity.sid")
    public EquipConfig updateEquipConfigById(EquipConfig entity) {
        EquipConfig equipConfig = new EquipConfig();
        super.updateById(entity);
        BeanUtils.copyProperties(equipConfig, entity);
        return equipConfig;
    }

    @Override
    @CachePut(cacheNames = "equipConfig", key = "#result.sid")
    public EquipConfig saveEquipConfig(EquipConfig entity) {
        EquipConfig equipConfig = new EquipConfig();
        super.save(entity);
        BeanUtils.copyProperties(equipConfig, entity);
        return equipConfig;
    }
}

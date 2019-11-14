package com.firecloud.function.sys.service;

import com.firecloud.function.sys.domain.EquipConfig;
import com.baomidou.mybatisplus.extension.service.IService;

import java.io.Serializable;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zhouy
 * @since 2019-10-31
 */
public interface EquipConfigService extends IService<EquipConfig> {
    EquipConfig getEquipConfigByDevId(String DevId);

    EquipConfig updateEquipConfigById(EquipConfig entity);
    EquipConfig saveEquipConfig(EquipConfig entity);

    EquipConfig getEquipConfigById(Serializable id);
}

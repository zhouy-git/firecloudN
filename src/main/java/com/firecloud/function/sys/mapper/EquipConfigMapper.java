package com.firecloud.function.sys.mapper;

import com.firecloud.function.sys.domain.EquipConfig;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author zhouy
 * @since 2019-10-31
 */
public interface EquipConfigMapper extends BaseMapper<EquipConfig> {
    EquipConfig getEquipConfigByDevId(String sid);
}

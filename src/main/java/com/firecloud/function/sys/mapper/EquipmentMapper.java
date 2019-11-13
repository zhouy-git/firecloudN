package com.firecloud.function.sys.mapper;

import com.firecloud.function.sys.domain.Equipment;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author zhouy
 * @since 2019-10-30
 */
public interface EquipmentMapper extends BaseMapper<Equipment> {
    Equipment getEquipmentByDevId(String devid);
}

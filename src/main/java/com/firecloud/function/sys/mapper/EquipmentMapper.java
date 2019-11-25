package com.firecloud.function.sys.mapper;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.firecloud.function.sys.domain.Equipment;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

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

    Integer getOnlineRes(@Param(Constants.WRAPPER) Wrapper<Equipment> wrapper);
}

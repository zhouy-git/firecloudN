package com.firecloud.function.sys.mapper;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.firecloud.function.sys.domain.DevAlerm;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author zhouy
 * @since 2019-11-07
 */
public interface DevAlermMapper extends BaseMapper<DevAlerm> {
    Integer getAlermCount(@Param(Constants.WRAPPER) Wrapper<DevAlerm> wrapper);
}

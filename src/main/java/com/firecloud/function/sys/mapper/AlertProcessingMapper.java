package com.firecloud.function.sys.mapper;

import com.firecloud.function.sys.domain.AlertProcessing;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author zhouy
 * @since 2019-11-08
 */
public interface AlertProcessingMapper extends BaseMapper<AlertProcessing> {
        List<AlertProcessing> getTopShowMain(Integer number);
}

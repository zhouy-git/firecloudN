package com.firecloud.function.sys.service.impl;

import com.firecloud.function.sys.domain.AlertProcessing;
import com.firecloud.function.sys.mapper.AlertProcessingMapper;
import com.firecloud.function.sys.service.AlertProcessingService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zhouy
 * @since 2019-11-08
 */
@Service
public class AlertProcessingServiceImpl extends ServiceImpl<AlertProcessingMapper, AlertProcessing> implements AlertProcessingService {

    @Override
    public List<AlertProcessing> getTopShowMain(Integer number) {
        return this.getBaseMapper().getTopShowMain(number);
    }
}

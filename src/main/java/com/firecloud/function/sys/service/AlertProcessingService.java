package com.firecloud.function.sys.service;

import com.firecloud.function.sys.domain.AlertProcessing;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zhouy
 * @since 2019-11-08
 */
public interface AlertProcessingService extends IService<AlertProcessing> {
    List<AlertProcessing> getTopShowMain(Integer number);
}

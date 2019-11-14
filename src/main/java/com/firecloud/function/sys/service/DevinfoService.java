package com.firecloud.function.sys.service;

import com.firecloud.function.sys.domain.Devinfo;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zhouy
 * @since 2019-10-23
 */
public interface DevinfoService extends IService<Devinfo> {


    List<Integer> getIndexEcharDataByWM(List<String> param);

    List<Integer> getMainDataByMonth(List<String> param);

}

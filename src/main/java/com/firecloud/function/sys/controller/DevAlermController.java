package com.firecloud.function.sys.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.firecloud.function.sys.common.DataGridView;
import com.firecloud.function.sys.common.ResultObj;
import com.firecloud.function.sys.domain.DevAlerm;
import com.firecloud.function.sys.domain.EquipConfig;
import com.firecloud.function.sys.domain.Notice;
import com.firecloud.function.sys.service.DevAlermService;
import com.firecloud.function.sys.service.EquipConfigService;
import com.firecloud.function.sys.vo.DevAlermVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author zhouy
 * @since 2019-11-07
 */
@RestController
@RequestMapping("devAlarmfo")
public class DevAlermController {

    @Autowired
    private DevAlermService devAlermService;

    @Autowired
    private EquipConfigService equipConfigService;

    @RequestMapping("loadAllDevAlarm")
    public DataGridView loadAllDevAlarm(DevAlermVo devAlermVo) {

        IPage<DevAlerm> page = new Page<>(devAlermVo.getPage(), devAlermVo.getLimit());

        QueryWrapper<DevAlerm> queryWrapper = new QueryWrapper<>();

        queryWrapper.like(StringUtils.isNoneBlank(devAlermVo.getDevId()), "dev_id", devAlermVo.getDevId());

        queryWrapper.like(StringUtils.isNoneBlank(devAlermVo.getDevStatus()), "dev_status", devAlermVo.getDevStatus());
        //大于创建时间
        queryWrapper.ge(devAlermVo.getNetDate()!=null, "net_date", devAlermVo.getNetDate());
        //小于创建时间
        queryWrapper.le(devAlermVo.getNetDate()!=null, "net_date", devAlermVo.getNetDate());

        queryWrapper.orderByDesc("net_date");
        this.devAlermService.page(page, queryWrapper);
        List<DevAlerm> devAlermsList = page.getRecords();
        for (DevAlerm devAlerm : devAlermsList) {
            String dev_stausid = devAlerm.getDevStatus();

            EquipConfig equipConfig = this.equipConfigService.getById(dev_stausid);
            if (equipConfig !=null) {
                devAlerm.setStatusName(equipConfig.getStatusname());
            }
        }
        return new DataGridView(page.getTotal(), devAlermsList);

    }

    @RequestMapping("batchDeleteDevAlarm")
    public ResultObj batchDeleteDevAlarm() {
        return null;
    }
}


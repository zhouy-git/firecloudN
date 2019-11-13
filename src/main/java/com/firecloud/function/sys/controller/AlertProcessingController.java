package com.firecloud.function.sys.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.firecloud.function.sys.common.Constast;
import com.firecloud.function.sys.common.DataGridView;
import com.firecloud.function.sys.common.WebSocketServer;
import com.firecloud.function.sys.domain.AlertProcessing;
import com.firecloud.function.sys.domain.Equipment;
import com.firecloud.function.sys.service.AlertProcessingService;
import com.firecloud.function.sys.service.EquipmentService;
import com.firecloud.function.sys.vo.AlertProcessingVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author zhouy
 * @since 2019-11-08
 */
@RestController
@RequestMapping("alertPro")
public class AlertProcessingController {
    @Autowired
    private AlertProcessingService alertProService;

    @Autowired
    private EquipmentService equipmentService;

    @RequestMapping("getFireAllInfo")
    public DataGridView getFireAllInfo(AlertProcessingVo alertProcessingVo) {
        IPage<AlertProcessing> page = new Page<>(alertProcessingVo.getPage(), alertProcessingVo.getLimit());
        QueryWrapper<AlertProcessing> queryWrapper = new QueryWrapper<>();
        queryWrapper.lambda().eq(AlertProcessing::getDevStatus, Constast.FIRE);
        queryWrapper.orderByDesc("ALARMTIME");
        this.alertProService.page(page, queryWrapper);
        List<AlertProcessing> lists = page.getRecords();
        for (AlertProcessing list : lists) {
            if (list.getDevName() == null && list.getFloorarea()==null){
                String DEVID =list.getDevId();
                Equipment equipment = this.equipmentService.getEquipmentByDevId(DEVID);
                if (equipment != null) {
                    list.setDevName(equipment.getDevicename());
                    list.setUnitType(equipment.getDevicemodel());
                    list.setLocation(equipment.getInstalllocation());
                    list.setUnderbuilding(equipment.getUnderbuild());
                    list.setFloorarea(equipment.getFloorarea());
                    list.setAlreamType("火警");
                    this.alertProService.updateById(list);
                }
            }
        }
        return new DataGridView(page.getTotal(), page.getRecords());
    }

    @RequestMapping("getBreakDownAllInfo")
    public DataGridView getBreakDownAllInfo(AlertProcessingVo alertProcessingVo) {
        IPage<AlertProcessing> page = new Page<>(alertProcessingVo.getPage(), alertProcessingVo.getLimit());
        QueryWrapper<AlertProcessing> queryWrapper = new QueryWrapper<>();
        queryWrapper.lambda().in(AlertProcessing::getDevStatus, 3, 7, 11, 15);
        queryWrapper.orderByDesc("ALARMTIME");
        this.alertProService.page(page, queryWrapper);
        List<AlertProcessing> lists = page.getRecords();
        for (AlertProcessing list : lists) {
            String DEVID =list.getDevId();
            Equipment equipment = this.equipmentService.getEquipmentByDevId(DEVID);
            if (equipment != null) {
                list.setDevName(equipment.getDevicename());
                list.setUnitType(equipment.getDevicemodel());
                list.setLocation(equipment.getInstalllocation());
                list.setUnderbuilding(equipment.getUnderbuild());
                list.setFloorarea(equipment.getFloorarea());
                list.setAlreamType("故障");
                this.alertProService.updateById(list);
            }
        }
        return new DataGridView(page.getTotal(), page.getRecords());
    }

    @RequestMapping("getTroubleAllInfo")
    public DataGridView getTroubleAllInfo(AlertProcessingVo alertProcessingVo) {
        IPage<AlertProcessing> page = new Page<>(alertProcessingVo.getPage(), alertProcessingVo.getLimit());
        QueryWrapper<AlertProcessing> queryWrapper = new QueryWrapper<>();
        queryWrapper.lambda().in(AlertProcessing::getDevStatus, 2, 9, 10);
        queryWrapper.orderByDesc("ALARMTIME");
        this.alertProService.page(page, queryWrapper);
        List<AlertProcessing> lists = page.getRecords();
        for (AlertProcessing list : lists) {
            String DEVID =list.getDevId();
            Equipment equipment = this.equipmentService.getEquipmentByDevId(DEVID);
            if (equipment != null) {
                list.setDevName(equipment.getDevicename());
                list.setUnitType(equipment.getDevicemodel());
                list.setLocation(equipment.getInstalllocation());
                list.setUnderbuilding(equipment.getUnderbuild());
                list.setFloorarea(equipment.getFloorarea());
                list.setAlreamType("异常");
                this.alertProService.updateById(list);
            }
        }
        return new DataGridView(page.getTotal(), page.getRecords());
    }

}


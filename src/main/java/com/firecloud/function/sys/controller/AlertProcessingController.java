package com.firecloud.function.sys.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.firecloud.function.sys.common.Constast;
import com.firecloud.function.sys.common.DataGridView;
import com.firecloud.function.sys.common.ResultObj;
import com.firecloud.function.sys.common.WebUtils;
import com.firecloud.function.sys.domain.AlertProcessing;
import com.firecloud.function.sys.domain.EquipConfig;
import com.firecloud.function.sys.domain.Equipment;
import com.firecloud.function.sys.service.AlertProcessingService;
import com.firecloud.function.sys.service.EquipConfigService;
import com.firecloud.function.sys.service.EquipmentService;
import com.firecloud.function.sys.vo.AlertProcessingVo;
import com.firecloud.function.sys.vo.DeptVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import javax.annotation.Resource;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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

    @Autowired
    private EquipConfigService equipConfigService;


    @RequestMapping("getFireAllInfo")
    public DataGridView getFireAllInfo(AlertProcessingVo alertProcessingVo) {
        IPage<AlertProcessing> page = new Page<>(alertProcessingVo.getPage(), alertProcessingVo.getLimit());
        QueryWrapper<AlertProcessing> queryWrapper = new QueryWrapper<>();
        queryWrapper.lambda().eq(AlertProcessing::getDevStatus, Constast.FIRE);
        queryWrapper.orderByDesc("ALARMTIME");
        this.alertProService.page(page, queryWrapper);
        List<AlertProcessing> lists = page.getRecords();
        for (AlertProcessing list : lists) {
                String statusId = list.getDevStatus();
                String DEVID =list.getDevId();
                Equipment equipment = this.equipmentService.getEquipmentByDevId(DEVID);
                EquipConfig equipConfig = this.equipConfigService.getById(statusId);
                if (equipment != null) {
                    list.setDevName(equipment.getDevicename());
                    list.setUnitType(equipment.getDevicemodel());
                    list.setLocation(equipment.getInstalllocation());
                    list.setUnderbuilding(equipment.getUnderbuild());
                    list.setFloorarea(equipment.getFloorarea());
                    list.setAlreamType("火警");
                    list.setStatusName(equipConfig.getStatusname());
                    this.alertProService.updateById(list);
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

                String statusId = list.getDevStatus();
                String DEVID =list.getDevId();
                Equipment equipment = this.equipmentService.getEquipmentByDevId(DEVID);
                EquipConfig equipConfig = this.equipConfigService.getById(statusId);
                if (equipment != null) {
                    list.setDevName(equipment.getDevicename());
                    list.setUnitType(equipment.getDevicemodel());
                    list.setLocation(equipment.getInstalllocation());
                    list.setUnderbuilding(equipment.getUnderbuild());
                    list.setFloorarea(equipment.getFloorarea());
                    list.setAlreamType("故障");
                    list.setStatusName(equipConfig.getStatusname());
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
                String statusId = list.getDevStatus();
                String DEVID =list.getDevId();
                Equipment equipment = this.equipmentService.getEquipmentByDevId(DEVID);
                EquipConfig equipConfig = this.equipConfigService.getById(statusId);
                if (equipment != null) {
                    list.setDevName(equipment.getDevicename());
                    list.setUnitType(equipment.getDevicemodel());
                    list.setLocation(equipment.getInstalllocation());
                    list.setUnderbuilding(equipment.getUnderbuild());
                    list.setFloorarea(equipment.getFloorarea());
                    list.setAlreamType("异常");
                    list.setStatusName(equipConfig.getStatusname());
                    this.alertProService.updateById(list);
                }
        }
        return new DataGridView(page.getTotal(), page.getRecords());
    }

    @RequestMapping("updateAlert")
    public ResultObj updateAlert(AlertProcessingVo alertProcessing) {
        try {
            alertProcessing.setIsdeal("1");

            this.alertProService.updateById(alertProcessing);
            return ResultObj.DEAL_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DEAL_ERROR;
        }
    }

    @RequestMapping("batchDeleteAlerm")
    public ResultObj batchDeleteAlerm(AlertProcessingVo processingVo) {
        try {
            ArrayList<Serializable> idList = new ArrayList<>();
            for (Integer id : processingVo.getIds()) {
                idList.add(id);
            }
            this.alertProService.removeByIds(idList);
            return ResultObj.DELETE_SUCCESS;
        }catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }

    }

}


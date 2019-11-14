package com.firecloud.function.sys.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.firecloud.function.sys.common.Constast;
import com.firecloud.function.sys.common.DataGridView;
import com.firecloud.function.sys.common.ResultObj;
import com.firecloud.function.sys.domain.Devinfo;
import com.firecloud.function.sys.domain.EquipConfig;
import com.firecloud.function.sys.domain.Equipment;
import com.firecloud.function.sys.service.DevinfoService;
import com.firecloud.function.sys.service.EquipConfigService;
import com.firecloud.function.sys.service.EquipmentService;
import com.firecloud.function.sys.vo.EquipmentVo;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.ListOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author zhouy
 * @since 2019-10-30
 */
@Slf4j
@RestController
@RequestMapping("equipmentfo")
public class EquipmentController {
    @Autowired
    private EquipmentService equipmentService;
    @Autowired
    private DevinfoService devinfoService;
    @Autowired
    private EquipConfigService equipConfig;

    @RequestMapping("loadAllEquipment")
    public DataGridView loadAllEquipment(EquipmentVo equipmentVo) {
        List<Equipment> equipmentList;
            Page<Equipment> page = new Page<>(equipmentVo.getPage(), equipmentVo.getLimit());
            QueryWrapper<Equipment> queryWrapper = new QueryWrapper<>();
            queryWrapper.lambda().like(StringUtils.isNoneBlank(equipmentVo.getDevid()), Equipment::getDevid, equipmentVo.getDevid());
            queryWrapper.lambda().like(StringUtils.isNoneBlank(equipmentVo.getDevicename()), Equipment::getDevicename, equipmentVo.getDevicename());
            queryWrapper.lambda().like(StringUtils.isNoneBlank(equipmentVo.getUnderbuild()), Equipment::getUnderbuild, equipmentVo.getUnderbuild());
            queryWrapper.lambda().like(StringUtils.isNoneBlank(equipmentVo.getFloorarea()), Equipment::getFloorarea, equipmentVo.getFloorarea());
            //大于创建时间
            queryWrapper.ge(equipmentVo.getNettime()!=null, "nettime", equipmentVo.getNettime()!=null);
            //小于创建时间
            queryWrapper.le(equipmentVo.getNettime()!=null, "nettime", equipmentVo.getNettime()!=null);
            queryWrapper.orderByDesc("nettime");
            this.equipmentService.page(page, queryWrapper);
            equipmentList = page.getRecords();
            for (Equipment equipment: equipmentList) {
                Integer statusId = equipment.getDevicestatus();
                EquipConfig equipConfig = this.equipConfig.getById(statusId);
                if (equipConfig !=null) {
                    equipment.setStatusName(equipConfig.getStatusname());
                }
            }
             return new DataGridView(page.getTotal(), equipmentList);
    }

    /**
     * 添加设备
     * @param equipmentVo
     * @return
     */
    @RequestMapping("addEquipment")
    public ResultObj addEquipment(EquipmentVo equipmentVo) {
        try {
            Integer dnameid = equipmentVo.getDnameid();
            String dname = this.equipmentService.getDnameByDId(dnameid);
            if (dname != null) {
                equipmentVo.setDevicename(dname);
            }
            equipmentVo.setStatus(Constast.NORMARL);
            equipmentVo.setNettime(new Date());
            this.equipmentService.saveEquipment(equipmentVo);

            return  ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return  ResultObj.ADD_ERROR;
        }
    }
    /**
     * 根据设备id查询相关数据
     * @param id
     * @return
     */
    @RequestMapping("initDevByEqId")
    public DataGridView initDevByEqId(String id) {
       EquipmentVo equipmentVo = new EquipmentVo();
       IPage<Devinfo> page = new Page<>(equipmentVo.getPage(),equipmentVo.getLimit());
       QueryWrapper<Devinfo> queryWrapper = new QueryWrapper<>();
       queryWrapper.lambda().eq(Devinfo::getDevId,id);
       queryWrapper.lambda().orderByDesc(Devinfo::getDataDate);

       this.devinfoService.page(page, queryWrapper);
       return new DataGridView(page.getTotal(), page.getRecords());
    }
    /**
     * 删除设备
     * @param id
     * @return
     */
    @RequestMapping("deleteEquipment")
    public ResultObj deleteEquipment(String id) {
        try {
            log.info("deleteEquipment"+id);
            this.equipmentService.removeById(id);
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }
}


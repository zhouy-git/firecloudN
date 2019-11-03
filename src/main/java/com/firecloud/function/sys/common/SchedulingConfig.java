package com.firecloud.function.sys.common;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.firecloud.function.sys.domain.Devinfo;
import com.firecloud.function.sys.domain.Equipment;
import com.firecloud.function.sys.service.DevinfoService;
import com.firecloud.function.sys.service.EquipmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 定时计划任务类
 */
@Component
public class SchedulingConfig {
    @Autowired
    private EquipmentService equipmentService;

    @Autowired
    private DevinfoService devinfoService;
    /**
     * 更新设备表中的状态字段
     */
    @Scheduled(cron = "0 0/60 * * * ?")
    public void updateEquipmentDevStatus(){
        List<Equipment> equipmentList = this.equipmentService.list();
        for (Equipment equipment : equipmentList) {
            //获取设备的id
            String eid = equipment.getId();
            //获取设备的状态id
            Integer thisStatus = equipment.getDevicestatus();
            //获取最新数据的设备状态id
            Integer eqstatusid =  Integer.parseInt(this.equipmentService.getDevStatus(eid));
            if (thisStatus != eqstatusid || thisStatus==null) {
                equipment.setDevicestatus(eqstatusid);
                this.equipmentService.updateById(equipment);
            }
        }
    }

   /* @Scheduled(cron = "0 0/60 * * * ?")
    public void getTest() {

        Map<String, Object> map = new HashMap<>();
        //获取报警总数的信息
        List<Devinfo> list1 = this.devinfoService.GetDevAlllist(4);

        //获取所有报警的信息
        List<Devinfo> list2 = this.devinfoService.GetDevAlllist(3);



        System.out.println("csTime: " + new SimpleDateFormat("yyyy-mm-dd HH:mm:ss").format(new Date()));
    }*/
}

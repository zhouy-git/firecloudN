package com.firecloud.function.sys.common;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
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
import java.util.List;

@Component
public class SchedulingConfig {
    @Autowired
    private EquipmentService equipmentService;

    @Scheduled(cron = "0 0/60 * * * ?")
    public void getToken(){

        List<Equipment> equipmentList = this.equipmentService.list();

        for (Equipment equipment : equipmentList) {
            Integer eid = Integer.parseInt(equipment.getId());
            Integer eqstatusid =  this.equipmentService.getDevStatus(eid);
            if (eid != eqstatusid) {
                equipment.setStatus(eqstatusid);
                this.equipmentService.updateById(equipment);
            }
        }
        System.out.println("更新设备信息表中的设备状态: " + new SimpleDateFormat("yyyy-mm-dd HH:mm:ss").format(new Date()));
    }

   /* @Scheduled(cron = "0 0/1 * * * ?")
    public void getTest() {
        System.out.println("csTime: " + new SimpleDateFormat("yyyy-mm-dd HH:mm:ss").format(new Date()));
    }*/
}

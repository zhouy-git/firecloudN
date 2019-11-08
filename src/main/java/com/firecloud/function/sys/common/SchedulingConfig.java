package com.firecloud.function.sys.common;


import com.firecloud.function.sys.domain.Devinfo;
import com.firecloud.function.sys.domain.Equipment;
import com.firecloud.function.sys.service.DevinfoService;
import com.firecloud.function.sys.service.EquipmentService;
import org.springframework.beans.factory.annotation.Autowired;

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
    /*@Autowired
    private EquipmentService equipmentService;

    @Autowired
    private DevinfoService devinfoService;*/
    /**
     * 更新设备表中的状态字段
     */
    /*@Scheduled(cron = "0 0/60 * * * ?")
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
    }*/

    /*@Scheduled(cron = "0 0/1 * * * ?")
    public void getTest() {
        Map<String, Integer> map = new HashMap<>();
        List<Devinfo> lists = this.devinfoService.GetDevAlllist(1);
        Integer bj = lists.size();
        map.put("bj", bj);
        System.out.println("报警数："+lists.size());
        List<Devinfo> list2 = this.devinfoService.GetDevAlllist(2);
        Integer gz = list2.size();
        map.put("gz", gz);
        System.out.println("故障数："+list2.size());
        List<Devinfo> list3 = this.devinfoService.GetDevAlllist(3);
        Integer yc = list3.size();
        map.put("yc", yc);
        System.out.println("异常数："+list3.size());
        List<Devinfo> list4 = this.devinfoService.GetDevAlllist(4);
        Integer hj = lists.size();
        map.put("hj", hj);
        System.out.println("火警数："+list4.size());
        WebUtils.getSession().setAttribute("map",map);

        System.out.println(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()) + "将数据放入session中");
    }*/
}

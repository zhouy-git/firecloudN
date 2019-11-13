package com.firecloud.function.sys.common;
import com.firecloud.function.sys.service.DevAlermService;
import com.firecloud.function.sys.service.DevinfoService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import java.util.HashMap;
import java.util.Map;
/**
 * 定时计划任务类
 */
@Slf4j
@Component
public class SchedulingConfig {
    @Autowired
    private DevinfoService devinfoService;
    @Autowired
    private DevAlermService devAlermService;
    /**
     * 更新设备表中的状态字段
     */
   /* @Scheduled(cron = "0 0/60 * * * ?")
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
             log.info("向页面发送数据"+new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
        }
    }*/
    //@Scheduled(cron = "*/3 * * * * ?")
    public  void getTest() {
        Map<String, Integer> map = new HashMap<>();
        Integer bj = this.devAlermService.getAlermCount("");
        map.put("bj", bj);
        Integer gz = this.devAlermService.getAlermCount("gz");
        map.put("gz", gz);
        Integer yc = this.devAlermService.getAlermCount("yc");
        map.put("yc", yc);
        Integer hj = this.devAlermService.getAlermCount("fire");
        map.put("hj", hj);

        WebSocketServer.sendInfo("1234",map.toString().replace("=",":"));
    }
}

package com.firecloud.function.sys;

import com.firecloud.function.sys.domain.Devinfo;
import com.firecloud.function.sys.domain.Equipment;
import com.firecloud.function.sys.service.DevinfoService;
import com.firecloud.function.sys.service.EquipmentService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class FireCloudFunctionTests {

   /* @Autowired
    private EquipmentService equipmentService;*/

    @Test
    public void contextLoads() {
       /* List<Equipment> equipmentList = this.equipmentService.list();

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
        }*/
    }

}

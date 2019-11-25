package com.firecloud.function.sys.service;


import com.firecloud.function.sys.domain.Equipment;
import com.baomidou.mybatisplus.extension.service.IService;


/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zhouy
 * @since 2019-10-30
 */
public interface EquipmentService extends IService<Equipment> {

    /**
     * 根据前台下拉选的设备id获取设备信息
     * @param id
     * @return
     */
    String getDnameByDId(Integer id);

    Equipment saveEquipment(Equipment entity);

    Equipment updateEquipmentById(Equipment entity);

    Equipment getEquipmentByDevId(String devid);

    Integer getOnlineRes(String param);

}

package com.firecloud.function.sys.service.impl;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.firecloud.function.sys.common.Constast;
import com.firecloud.function.sys.domain.Devinfo;
import com.firecloud.function.sys.domain.Equipment;
import com.firecloud.function.sys.domain.User;
import com.firecloud.function.sys.mapper.EquipmentMapper;
import com.firecloud.function.sys.service.DevinfoService;
import com.firecloud.function.sys.service.EquipmentService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zhouy
 * @since 2019-10-30
 */
@Service
public class EquipmentServiceImpl extends ServiceImpl<EquipmentMapper, Equipment> implements EquipmentService {

    @Autowired
    private DevinfoService devinfoService;

    /**
     * 根据前台添加页面选择的设备名称id获取设备名
     */
    private String deviName ;
    public String getDnameByDId(Integer did) {

        if (did == 0) {
            deviName = Constast.YANAGN;
        }else if (did == 1) {
            deviName = Constast.RANQI;
        }else if (did == 2) {
            deviName = Constast.SHUIYAN;
        }else if (did == 3) {
            deviName = Constast.WENGAN;
        }else if (did == 4) {
            deviName = Constast.XIAOHUOSUAN;
        }
        return deviName;
    }


    /**
     * 获取发送过来的数据最新状态来更新设备表中的状态
     */
    private Integer DevStatusId;
    @Override
    public Integer getDevStatus(Integer statusid) {
        IPage<Devinfo> page=new Page<>(1, 1);
        QueryWrapper<Devinfo> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("DEV_ID", statusid);
        queryWrapper.orderByDesc("DATA_DATE");
        List<Devinfo> devinfoList = this.devinfoService.page(page, queryWrapper).getRecords();

        if (devinfoList.size() > 0) {
            DevStatusId = Integer.parseInt(devinfoList.get(0).getDevStatus());
        }else {
            DevStatusId = 1;
        }
        return DevStatusId;
    }
}

package com.firecloud.function.sys.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.firecloud.function.sys.common.DataGridView;
import com.firecloud.function.sys.common.ResultObj;
import com.firecloud.function.sys.domain.EquipConfig;
import com.firecloud.function.sys.domain.Equipment;
import com.firecloud.function.sys.service.EquipConfigService;
import com.firecloud.function.sys.vo.EquipConfigVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author zhouy
 * @since 2019-10-31
 */
@RestController
@RequestMapping("equipconfig")
public class EquipConfigController {


    @Autowired
    private EquipConfigService equipService;

    @RequestMapping("loadAllequipconfig")
    public DataGridView loadAllequipconfig(EquipConfigVo equipConfigVo) {

        IPage<EquipConfig> page = new Page<>(equipConfigVo.getPage(), equipConfigVo.getLimit());
        QueryWrapper<EquipConfig> queryWrapper = new QueryWrapper<>();
        queryWrapper.lambda().like(equipConfigVo.getSid()!=null, EquipConfig::getSid, equipConfigVo.getSid());
        queryWrapper.lambda().like(StringUtils.isNoneBlank(equipConfigVo.getStatusname()), EquipConfig::getStatusname, equipConfigVo.getStatusname());
        
        queryWrapper.orderByAsc("sid");

        this.equipService.page(page, queryWrapper);

        return new DataGridView(page.getTotal(), page.getRecords());

    }


    @RequestMapping("addequipconfig")
    public ResultObj addequipconfig(EquipConfigVo equipConfigVo) {
        try {
            this.equipService.save(equipConfigVo);
            return ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }
}


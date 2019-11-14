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
import org.springframework.data.redis.core.ListOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

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
    @Resource
    private RedisTemplate redisTemplate;
    private String key = "AllEquiConfig";
    @RequestMapping("loadAllequipconfig")
    public DataGridView loadAllequipconfig(EquipConfigVo equipConfigVo) {
        ListOperations<String,EquipConfig> operations = redisTemplate.opsForList();
        QueryWrapper<EquipConfig> queryWrapper = new QueryWrapper<>();
        if (equipConfigVo.getSid() != null || equipConfigVo.getStatusname() != null) {
            IPage<EquipConfig> page = new Page<>(equipConfigVo.getPage(), equipConfigVo.getLimit());
            queryWrapper.lambda().like(equipConfigVo.getSid()!=null, EquipConfig::getSid, equipConfigVo.getSid());
            queryWrapper.lambda().like(StringUtils.isNoneBlank(equipConfigVo.getStatusname()), EquipConfig::getStatusname, equipConfigVo.getStatusname());
            queryWrapper.orderByAsc("sid");
            this.equipService.page(page, queryWrapper);
            return new DataGridView(page.getTotal(), page.getRecords());
        }else {
            List<EquipConfig> equipConfigList;
            if (redisTemplate.hasKey(key)) {
                equipConfigList = operations.range(key, 0, -1);
            }else {
                equipConfigList = this.equipService.list();
                operations.leftPushAll(key, equipConfigList);
            }
            return new DataGridView(equipConfigList);
        }
    }


    @RequestMapping("addequipconfig")
    public ResultObj addequipconfig(EquipConfigVo equipConfigVo) {
        try {
            this.equipService.saveEquipConfig(equipConfigVo);
            redisTemplate.delete(key);
            return ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    @RequestMapping("updateEquipconfig")
    public ResultObj updateEquipconfig(EquipConfigVo equipConfigVo) {
        try {
            this.equipService.updateEquipConfigById(equipConfigVo);
            redisTemplate.delete(key);
            return ResultObj.UPDATE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }
}


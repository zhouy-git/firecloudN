package com.firecloud.function.sys.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.firecloud.function.sys.common.DataGridView;
import com.firecloud.function.sys.common.ResultObj;
import com.firecloud.function.sys.common.WebUtils;
import com.firecloud.function.sys.domain.Devinfo;
import com.firecloud.function.sys.domain.EquipConfig;
import com.firecloud.function.sys.domain.User;
import com.firecloud.function.sys.service.DevinfoService;
import com.firecloud.function.sys.service.EquipConfigService;
import com.firecloud.function.sys.vo.LoginfoVo;
import com.firecloud.function.sys.vo.DevinfoVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author zhouy
 * @since 2019-10-23
 */
@RestController
@RequestMapping("/devinfo")
public class DevinfoController {
    @Autowired
    private DevinfoService noticeService;

    @Autowired
    private EquipConfigService equipConfigService;

    @RequestMapping("loadAllDevinfo")
    public DataGridView loadAllDevinfo(DevinfoVo devinfoVo) {
        IPage<Devinfo> page = new Page<>(devinfoVo.getPage(), devinfoVo.getLimit());
        QueryWrapper<Devinfo> queryWrapper = new QueryWrapper<>();
        queryWrapper.lambda().like(StringUtils.isNoneBlank(devinfoVo.getDevId()), Devinfo::getDevId, devinfoVo.getDevId());
        queryWrapper.lambda().like(StringUtils.isNoneBlank(devinfoVo.getDevStatus()), Devinfo::getDevStatus, devinfoVo.getDevStatus());
        //大于创建时间
        queryWrapper.lambda().ge(devinfoVo.getDataDate()!=null, Devinfo::getDataDate, devinfoVo.getDataDate());
        //小于创建时间
        queryWrapper.lambda().le(devinfoVo.getDataDate()!=null, Devinfo::getDataDate, devinfoVo.getDataDate());
        queryWrapper.orderByDesc("DATA_DATE");
        this.noticeService.page(page, queryWrapper);
        List<Devinfo> devinfoList = page.getRecords();
        for (Devinfo devinfo : devinfoList) {
            Integer id = Integer.parseInt(devinfo.getDevStatus()) ;
            EquipConfig equipConfig = this.equipConfigService.getById(id);
            if (equipConfig != null){
                devinfo.setDevstatusname(equipConfig.getStatusname());
            }
        }
        return new DataGridView(page.getTotal(), devinfoList);
    }

    /**
     * 添加
     * @param devinfoVo
     * @return
     */
    @RequestMapping("addDevinfo")
    public ResultObj addDevinfo(DevinfoVo devinfoVo) {
        try {

            this.noticeService.save(devinfoVo);
            return ResultObj.ADD_SUCCESS;

        }catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    @RequestMapping("updatDevinfo")
    public ResultObj updatDevinfo(DevinfoVo devinfoVo) {

        try{
            this.noticeService.updateById(devinfoVo);
            return ResultObj.UPDATE_SUCCESS;
        }catch (Exception e) {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }

    /**
     * 根据id删除
     * @param id
     * @return
     */
    @RequestMapping("deleteDevinfo")
    public ResultObj deleteDevinfo(Integer id) {

        try {
            this.noticeService.removeById(id);
            return ResultObj.DELETE_SUCCESS;
        }catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }

    }
    /**
     * 批量删除
     * @param loginfoVo
     * @return
     */
    @RequestMapping("batchDeleteDevinfo")
    public ResultObj batchDeleteDevinfo(LoginfoVo loginfoVo) {

        try {
            ArrayList<Serializable> idList = new ArrayList<>();
            for (Integer id : loginfoVo.getIds()) {
                idList.add(id);
            }
            this.noticeService.removeByIds(idList);
            return ResultObj.DELETE_SUCCESS;
        }catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }

    }

}


package com.firecloud.function.sys.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.firecloud.function.sys.common.DataGridView;
import com.firecloud.function.sys.common.ResultObj;
import com.firecloud.function.sys.domain.Dept;
import com.firecloud.function.sys.domain.TreeNode;
import com.firecloud.function.sys.service.DeptService;
import com.firecloud.function.sys.vo.DeptVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import java.util.*;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author zhouy
 * @since 2019-10-22
 */
@RestController
@RequestMapping("/dept")
public class DeptController {

    @Autowired
    private DeptService deptService;

    @RequestMapping("loadDeptManagerLeftTreeJson")
    public DataGridView loadDeptManagerLeftTreeJson(DeptVo deptVo) {
        List<Dept> deptList = this.deptService.list();

        List<TreeNode> treeNodes = new ArrayList<>();

        for (Dept dept : deptList) {
            Boolean spread = dept.getOpen() == 1 ? true : false;
            treeNodes.add(new TreeNode(dept.getId(), dept.getPid(), dept.getTitle(),spread));
        }

        return new DataGridView(treeNodes);
    }


    @RequestMapping("loadAllDept")
    public DataGridView loadAllDept(DeptVo deptVo) {
        //System.out.println("名称："+deptVo.getTitle()+"地址："+deptVo.getAddress()+"备注："+ deptVo.getRemark());
        IPage<Dept> page = new Page<>(deptVo.getPage(), deptVo.getLimit());
        QueryWrapper<Dept> queryWrapper = new QueryWrapper<>();
        queryWrapper.like(StringUtils.isNoneBlank(deptVo.getTitle()), "title", deptVo.getTitle());
        queryWrapper.like(StringUtils.isNoneBlank(deptVo.getAddress()), "address", deptVo.getAddress());
        queryWrapper.like(StringUtils.isNoneBlank(deptVo.getRemark()), "remark", deptVo.getRemark());
        //点击左侧部门数加载对应的部门
        queryWrapper.eq(deptVo.getId() != null, "id", deptVo.getId()).or().eq(deptVo.getId() != null, "pid", deptVo.getId());

        queryWrapper.orderByAsc("ordernum");

        this.deptService.page(page, queryWrapper);

        return new DataGridView(page.getTotal(), page.getRecords());
    }

    /**
     * 获取排序码的默认值
     * @return
     */
    @RequestMapping("loadDeptMaxOrderNum")
    public Map<String, Object> loadDeptMaxOrderNum() {
        Map<String, Object> map = new HashMap<>();
        QueryWrapper<Dept> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("ordernum");
        //数据量查询比较大后期需要解决
        List<Dept> list = this.deptService.list(queryWrapper);
        if (list.size() > 0) {
            map.put("value", list.get(0).getOrdernum()+1);
        }else  {
            map.put("value", 1);
        }
        return map;
    }

    @RequestMapping("addDept")
    public ResultObj addDept(DeptVo deptVo) {
        try {
           deptVo.setCreatetime(new Date());
           this.deptService.save(deptVo);
           return ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    @RequestMapping("updateDept")
    public ResultObj updateDept(DeptVo deptVo) {

        try {
            deptVo.setCreatetime(new Date());
            this.deptService.updateById(deptVo);
            return ResultObj.UPDATE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }

    /**
     * 判断当前节点是否有子节点
     * @param deptVo
     * @return
     */
    @RequestMapping("checkDeptHasChildrenNode")
    public Map<String, Object> checkDeptHasChildrenNode(DeptVo deptVo) {
        Map<String,Object> map = new HashMap<>();
        QueryWrapper<Dept> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("pid", deptVo.getId());
        List<Dept> list = this.deptService.list(queryWrapper);
        if (list.size() > 0) {
            map.put("value",true);
        }else {
            map.put("value",false);
        }

        return map;
    }

    @RequestMapping("deleteDept")
    public ResultObj deleteDept(DeptVo deptVo) {
        try {
            this.deptService.removeById(deptVo.getId());
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }

    }


}


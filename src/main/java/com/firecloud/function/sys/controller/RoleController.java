package com.firecloud.function.sys.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.firecloud.function.sys.common.Constast;
import com.firecloud.function.sys.common.DataGridView;
import com.firecloud.function.sys.common.ResultObj;
import com.firecloud.function.sys.domain.Permission;
import com.firecloud.function.sys.domain.Role;
import com.firecloud.function.sys.domain.TreeNode;
import com.firecloud.function.sys.service.PermissionService;
import com.firecloud.function.sys.service.RoleService;
import com.firecloud.function.sys.vo.RoleVo;
import com.firecloud.function.sys.vo.RoleVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author zhouy
 * @since 2019-10-24
 */
@RestController
@RequestMapping("/role")
public class RoleController {

    @Autowired
    private RoleService roleService;

    @Autowired
    private PermissionService permissionService;


    @RequestMapping("loadAllRole")
    public DataGridView loadAllRole(RoleVo roleVo) {

        QueryWrapper<Role> queryWrapper = new QueryWrapper<>();

        IPage<Role> page = new Page<>(roleVo.getPage(), roleVo.getLimit());
        queryWrapper.like(StringUtils.isNoneBlank(roleVo.getName()),"name", roleVo.getName());
        queryWrapper.like(StringUtils.isNoneBlank(roleVo.getRemark()), "remark", roleVo.getRemark());
        queryWrapper.like(roleVo.getAvailable() != null, "available", roleVo.getAvailable());
        queryWrapper.orderByAsc("createtime");
        this.roleService.page(page, queryWrapper);
        return new DataGridView(page.getTotal(), page.getRecords());

    }

    @RequestMapping("initPermissionByRoleId")
    public DataGridView initPermissionByRoleId(Integer roleId) {
        //查询可用的菜单和权限
        QueryWrapper<Permission> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("available", Constast.AVAILABLE_TRUE);
        List<Permission> allPermissions = permissionService.list(queryWrapper);
        /**
         * 1.根据角色id查询当前角色拥有的所有权限或者菜单id
         * 2，根据查询出来的菜单ID查询权限和菜单数据
         */
        List<Integer> currentRolePermissions = this.roleService.queryRolePermissionsIdByRid(roleId);


        List<Permission> currentPermissions ;
        if (currentRolePermissions.size()>0) { //如果有ID就去查询
            currentPermissions = permissionService.list(queryWrapper);
            queryWrapper.in("id", currentRolePermissions);
        }else {
            currentPermissions = new ArrayList<>();
        }


        List<TreeNode> nodes = new ArrayList<>();

        for (Permission p1 : allPermissions) {
            String checkArr = "0";

            for (Permission p2 : currentPermissions) {
                //确定checkArr是0还是1
                if (p1.getId() == p2.getId()) {
                    checkArr = "1";
                    break;
                }
            }
            Boolean spread = p1.getOpen() == null || p1.getOpen()==1?true:false;
            nodes.add(new TreeNode(p1.getId(), p1.getPid(), p1.getTitle(), spread, checkArr));
        }

        return new DataGridView(nodes);
    }

    /**
     * 保存菜单和权限之间的关系
     * @param rid
     * @param ids
     * @return
     */

    @RequestMapping("saveRolePermission")
    public ResultObj saveRolePermission(Integer rid, Integer[] ids) {

        try {
            this.roleService.saveRolePermission(rid,ids);
            return ResultObj.DISPATCH_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DISPATCH_ERROR;
        }
    }


    @RequestMapping("addRole")
    public ResultObj addRole(RoleVo roleVo) {

        try {
            roleVo.setCreatetime(new Date());
            this.roleService.save(roleVo);
            return ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    @RequestMapping("updateRole")
    public ResultObj updateRole(RoleVo roleVo) {

        try {
            roleVo.setCreatetime(new Date());
            this.roleService.updateById(roleVo);
            return ResultObj.UPDATE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }


    @RequestMapping("deleteRole")
    public ResultObj deleteRole(RoleVo roleVo) {

        try {
           this.roleService.removeById(roleVo.getId());
           return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

}


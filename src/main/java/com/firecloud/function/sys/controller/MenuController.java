package com.firecloud.function.sys.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.firecloud.function.sys.common.*;
import com.firecloud.function.sys.domain.Permission;
import com.firecloud.function.sys.domain.TreeNode;
import com.firecloud.function.sys.service.RoleService;
import com.firecloud.function.sys.vo.PermissionVo;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.ListOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.*;

@Slf4j
@RestController
@RequestMapping("menu")
public class MenuController {

    @Autowired
    private com.firecloud.function.sys.service.PermissionService permissionService;


    @Autowired
    private RoleService roleService;

    @RequestMapping("loadIndexLeftMenuJson")
    public DataGridView loadIndexLeftMenuJson() {
        //查询所有菜单
        QueryWrapper<com.firecloud.function.sys.domain.Permission> queryWrapper = new QueryWrapper<>();
        //设置只能查询菜单
        queryWrapper.eq("type", Constast.TYPE_MENU);
        queryWrapper.eq("available", Constast.AVAILABLE_TRUE);
        queryWrapper.orderByAsc("ordernum");
        //获取用户的角色
        com.firecloud.function.sys.domain.User user = (com.firecloud.function.sys.domain.User) WebUtils.getSession().getAttribute("user");
        List<Permission> listPermission = null ;

        //如果是超级管理员
        if(user.getType()==Constast.USER_TYPE_SUPER) {
                listPermission = permissionService.list(queryWrapper);
        }else {
            //根据用户ID+角色+权限去查询
            //listPermission = permissionService.list(queryWrapper);
            Integer userId = user.getId();
            //根据id查询角色
            List<Integer> currentUserRoleIds = roleService.queryUserRoleIdsByUid(userId);

            Set<Integer> pids = new HashSet<>();
            //根据角色id查询权限
            for (Integer rid : currentUserRoleIds) {
                List<Integer> permissionIds = roleService.queryRolePermissionsIdByRid(rid);
                pids.addAll(permissionIds);
            }

            //根据角色id查询权限
            if (pids.size() > 0) {
                queryWrapper.in("id", pids);
                listPermission = permissionService.list(queryWrapper);
            }
        }

        List<TreeNode> treeNodes = new ArrayList<>();

        for(com.firecloud.function.sys.domain.Permission p: listPermission) {
            Integer id=p.getId();
            Integer pid=p.getPid();
            String title=p.getTitle();
            String icon=p.getIcon();
            String href=p.getHref();
            Boolean spread=p.getOpen()==Constast.OPEN_TRUE?true:false;
            treeNodes.add(new TreeNode(id, pid, title, icon, href, spread));
        }
        //构造层级关系
        List<TreeNode> list2 = TreeNodeBuilder.build(treeNodes, Constast.USER_TYPE_NORMAL);
        return new DataGridView(list2);
    }
    /****************菜单管理开始****************/
    /**
     * 加载菜单管理左边的菜单树的json
     */
    @RequestMapping("loadMenuManagerLeftTreeJson")
    public DataGridView loadMenuManagerLeftTreeJson() {

        List<Permission> list;
        QueryWrapper<Permission> queryWrapper=new QueryWrapper<>();
        queryWrapper.eq("type", Constast.TYPE_MENU);

        list = this.permissionService.list(queryWrapper);

        List<TreeNode> treeNodes=new ArrayList<>();
        for (Permission menu : list) {
            Boolean spread = (menu.getOpen()==null || menu.getOpen()==1 )? true:false;
            treeNodes.add(new TreeNode(menu.getId(), menu.getPid(), menu.getTitle(), spread));
        }
        return new DataGridView(treeNodes);
    }

    /**
     * 查询
     */
    @RequestMapping("loadAllMenu")
    public DataGridView loadAllMenu(PermissionVo permissionVo) {
        IPage<Permission> page = new Page<>(permissionVo.getPage(), permissionVo.getLimit());
        QueryWrapper<Permission> queryWrapper = new QueryWrapper<>();

        queryWrapper.eq(permissionVo.getId()!=null, "id", permissionVo.getId()).or().
                eq(permissionVo.getId()!=null,"pid", permissionVo.getId());
        queryWrapper.eq("type", Constast.TYPE_MENU);//只能查询菜单
        queryWrapper.like(StringUtils.isNotBlank(permissionVo.getTitle()), "title", permissionVo.getTitle());
        queryWrapper.orderByAsc("ordernum");
        this.permissionService.page(page, queryWrapper);

        return new DataGridView(page.getTotal(), page.getRecords());
    }

    /**
     * 加载最大的排序码
     * @return
     */
    @RequestMapping("loadMenuMaxOrderNum")
    public Map<String,Object> loadMenuMaxOrderNum(){
        Map<String, Object> map=new HashMap<>();
        QueryWrapper<Permission> queryWrapper=new QueryWrapper<>();
        queryWrapper.orderByDesc("ordernum");
        IPage<Permission> page=new Page<>(1, 1);
        List<Permission> list ;
        list = this.permissionService.page(page, queryWrapper).getRecords();
        if(list.size()>0) {
            map.put("value", list.get(0).getOrdernum()+1);
        }else {
            map.put("value", 1);
        }
        return map;
    }

    /**
     * 添加
     * @param permissionVo
     * @return
     */
    @RequestMapping("addMenu")
    public ResultObj addMenu(PermissionVo permissionVo) {
        try {
            permissionVo.setType(Constast.TYPE_MENU);//设置添加类型
            this.permissionService.savePermission(permissionVo);
            return ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    /**
     * 修改
     * @param permissionVo
     * @return
     */
    @RequestMapping("updateMenu")
    public ResultObj updateMenu(PermissionVo permissionVo) {
        try {
            this.permissionService.updatePermissionById(permissionVo);
           // redisTemplate.delete("checkMenuHasChildrenNode");
            return ResultObj.UPDATE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }

    /**
     * 查询当前的ID的菜单有没有子菜单
     */
    @RequestMapping("checkMenuHasChildrenNode")
    public Map<String,Object> checkMenuHasChildrenNode(PermissionVo permissionVo){
        //String key = "checkMenuHasChildrenNode";

        Map<String, Object> map=new HashMap<>();
        QueryWrapper<Permission> queryWrapper=new QueryWrapper<>();
        queryWrapper.eq("pid", permissionVo.getId());
        queryWrapper.eq("type",Constast.TYPE_MENU);
        List<Permission> list;
        list = this.permissionService.list(queryWrapper);
        if(list.size()>0) {
            map.put("value", true);
        }else {
            map.put("value", false);
        }
        return map;
    }

    /**
     * 删除
     * @param permissionVo
     * @return
     */
    @RequestMapping("deleteMenu")
    public ResultObj deleteMenu(PermissionVo permissionVo) {
        try {
            this.permissionService.removeById(permissionVo.getId());
            //redisTemplate.delete("checkMenuHasChildrenNode");
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }
    /****************菜单管理结束****************/
    public static List<String> getKeys() {
        ArrayList<String> keys = new ArrayList<>();
        keys.add("keyTreeNodeLeft");
        keys.add("key_menu");
        keys.add("loadMenuMaxOrderNum");
        return keys;
    }
}

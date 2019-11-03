package com.firecloud.function.sys.service;

import com.firecloud.function.sys.domain.Role;
import com.baomidou.mybatisplus.extension.service.IService;

import java.io.Serializable;
import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zhouy
 * @since 2019-10-24
 */
public interface RoleService extends IService<Role> {

    //根据角色id查询当前角色拥有的所有权限或者菜单id
    List<Integer> queryRolePermissionsIdByRid(Integer roleId);

    /**
     * 保存菜单和权限之间的关系
     * @param roleId
     * @param ids
     */
    void saveRolePermission(Integer roleId, Integer[] ids);

    /**
     * 根据用户的id查询角色id
     * @param id
     * @return
     */
    List<Integer> queryUserRoleIdsByUid(Integer id);
}

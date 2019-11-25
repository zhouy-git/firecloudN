package com.firecloud.function.sys.mapper;

import com.firecloud.function.sys.domain.Role;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.io.Serializable;
import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author zhouy
 * @since 2019-10-24
 */
public interface RoleMapper extends BaseMapper<Role> {
    /**
     * 根据角色id删除sys_role_permission中间表
     * @param rid
     */
    void deleteRolePermissionByRid(Serializable rid);

    /**
     * 根据角色id删除sys_role_user
     * @param id
     */
    void deleteRoleUserById(Serializable id);

    /**
     *    //根据角色id查询当前角色拥有的所有权限或者菜单id
     * @param roleId
     * @return
     */
    List<Integer> queryRolePermissionsIdByRid(Integer roleId);

    void saveRolePermission(@Param("rid")Integer rid, @Param("pid")Integer pid);


    List<Integer> queryUserRoleIdsByUid(Integer id);


    //保存角色和用户的关系
    void insertUserRole(@Param("uid") Integer uid,@Param("rid") Integer rid);
}

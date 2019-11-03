package com.firecloud.function.sys.service.impl;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.firecloud.function.sys.domain.Role;
import com.firecloud.function.sys.mapper.RoleMapper;
import com.firecloud.function.sys.service.RoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zhouy
 * @since 2019-10-24
 */
@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements RoleService {

    @Override
    public boolean removeById(Serializable id) {
        //xml中写的mapper
        this.getBaseMapper().deleteRolePermissionByid(id);
        //xml中写的mapper
        this.getBaseMapper().deleteRoleUserById(id);

        return super.removeById(id);
    }

    @Override
    public List<Integer> queryRolePermissionsIdByRid(Integer roleId) {

        return this.getBaseMapper().queryRolePermissionsIdByRid(roleId);
    }

    @Override
    public void saveRolePermission(Integer rid, Integer[] ids) {

        RoleMapper roleMapper = this.getBaseMapper();

        //根据rid删除已经存在的pid
        roleMapper.deleteRolePermissionByid(rid);

        if (ids != null && ids.length > 0) {
            for (Integer pid : ids) {
                roleMapper.saveRolePermission(rid, pid);
            }
        }
    }

    /**
     * 根据用户的id查询出所有的角色id
     * @param id
     * @return
     */

    @Override
    public List<Integer> queryUserRoleIdsByUid(Integer id) {


        return this.getBaseMapper().queryUserRoleIdsByUid(id);
    }


}

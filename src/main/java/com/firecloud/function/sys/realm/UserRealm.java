package com.firecloud.function.sys.realm;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.firecloud.function.sys.common.ActiverUser;
import com.firecloud.function.sys.common.Constast;
import com.firecloud.function.sys.domain.Permission;
import com.firecloud.function.sys.domain.User;
import com.firecloud.function.sys.service.PermissionService;
import com.firecloud.function.sys.service.RoleService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class UserRealm extends AuthorizingRealm {

    @Autowired
    private com.firecloud.function.sys.service.UserService userService;

    @Autowired
    private PermissionService permissionService;

    @Autowired
    private RoleService roleService;

    @Override
    public String getName() {
        return this.getClass().getSimpleName();
    }

    /**
     * 认证
     * @param token
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        Wrapper<com.firecloud.function.sys.domain.User> queryWarraper = new QueryWrapper<>();
        //验证用户名
        ((QueryWrapper<User>) queryWarraper).eq("loginname",token.getPrincipal().toString());

        User user  = userService.getOne(queryWarraper);
        if(user != null) {
            ActiverUser activerUser = new ActiverUser();
            activerUser.setUser(user);

            QueryWrapper<Permission> qw  = new QueryWrapper<>();
            //根据用户id查询percode
            Integer userId = user.getId();
            //根据用户id查询角色
            List<Integer> currentUserRoleIds = this.roleService.queryUserRoleIdsByUid(userId);

            //根据角色id取到权限和菜单id
            Set<Integer> pids = new HashSet<>();

            for (Integer rid : currentUserRoleIds) {
                List<Integer> permissionIds = roleService.queryRolePermissionsIdByRid(rid);
                pids.addAll(permissionIds);
            }

            List<Permission> list = new ArrayList<>();
            //根据角色id查询权限
            if (pids.size() > 0) {

                qw.in("id", pids);
                list = permissionService.list(qw);

            }
            List<String> percodes = new ArrayList<>();
            for (Permission permission : list) {
                percodes.add(permission.getPercode());
            }

            activerUser.setPermissions(percodes);

            //言
            ByteSource credentialsSalt = ByteSource.Util.bytes(user.getSalt());

            SimpleAuthenticationInfo info =
                    new SimpleAuthenticationInfo(activerUser, user.getPwd(), credentialsSalt,this.getName());

            return info;
        }
        return null;
    }

    /**
     * 按钮授权
     * @param principalCollection
     * @return
     */

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {

        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();

        ActiverUser activerUser = (ActiverUser) principalCollection.getPrimaryPrincipal();

        User user = activerUser.getUser();

        List<String> permissions = activerUser.getPermissions();

        if (user.getType() == Constast.USER_TYPE_SUPER) {
            authorizationInfo.addStringPermission("*:*");
        }else {
            if (null != permissions && permissions.size() > 0) {
                authorizationInfo.addStringPermissions(permissions);
            }
        }
        return authorizationInfo;
    }


}

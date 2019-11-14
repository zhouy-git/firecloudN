package com.firecloud.function.sys.realm;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.firecloud.function.sys.common.ActiverUser;
import com.firecloud.function.sys.domain.User;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;

public class UserRealm extends AuthorizingRealm {

    @Autowired
    @Lazy //只有使用的时候才会加载
    private com.firecloud.function.sys.service.UserService userService;


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
        System.out.println("代理对象"+ this.userService.getClass().getSimpleName());
        Wrapper<com.firecloud.function.sys.domain.User> queryWarraper = new QueryWrapper<>();
        //验证用户名
        ((QueryWrapper<User>) queryWarraper).eq("loginname",token.getPrincipal().toString());

        User user  = userService.getOne(queryWarraper);
        if(user != null) {
            ActiverUser activerUser = new ActiverUser();
            activerUser.setUser(user);

            //言
            ByteSource credentialsSalt = ByteSource.Util.bytes(user.getSalt());

            SimpleAuthenticationInfo info =
                    new SimpleAuthenticationInfo(activerUser, user.getPwd(), credentialsSalt,this.getName());

            return info;
        }
        return null;
    }

    /**
     * 授权
     * @param principalCollection
     * @return
     */

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }


}

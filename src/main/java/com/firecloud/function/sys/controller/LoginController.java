package com.firecloud.function.sys.controller;


import com.firecloud.function.sys.common.ActiverUser;
import com.firecloud.function.sys.common.ResultObj;
import com.firecloud.function.sys.common.WebUtils;
import com.firecloud.function.sys.domain.Devinfo;
import com.firecloud.function.sys.domain.Loginfo;
import com.firecloud.function.sys.service.DevAlermService;
import com.firecloud.function.sys.service.DevinfoService;
import com.firecloud.function.sys.service.LoginfoService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("login")
public class LoginController {

    @Autowired
    private LoginfoService loginfoService;

    @Autowired
    private DevAlermService devAlermService;

    /**
     * 判断登录名和用户密码
     * @param loginname
     * @param pwd
     * @return
     */
    @RequestMapping("login")
    public ResultObj login(String loginname, String pwd) {
        Subject subject = SecurityUtils.getSubject();
        AuthenticationToken token = new UsernamePasswordToken(loginname, pwd);
        try {
            subject.login(token);
            ActiverUser activerUser = (ActiverUser) subject.getPrincipal();
            //将User放入session中
            WebUtils.getSession().setAttribute("user", activerUser.getUser());

            Map<String, Integer> map = new HashMap<>();
            Integer bj = this.devAlermService.getAlermCount("");
            map.put("bj", bj);
            Integer gz = this.devAlermService.getAlermCount("gz");
            map.put("gz", gz);
            Integer yc = this.devAlermService.getAlermCount("yc");
            map.put("yc", yc);
            Integer hj = this.devAlermService.getAlermCount("fire");
            map.put("hj", hj);
            //将数据放入首页
            WebUtils.getSession().setAttribute("map",map);

            //记录登录日志
            Loginfo loginfo = new Loginfo();
            loginfo.setLoginname(activerUser.getUser().getName() +"-"+ activerUser.getUser().getLoginname());
            loginfo.setLoginip(WebUtils.getRequest().getRemoteAddr());
            loginfo.setLogintime(new Date());
            loginfoService.save(loginfo);

            return ResultObj.LOGIN_SUCCESS;
        } catch (AuthenticationException e) {
            e.printStackTrace();
            return ResultObj.LOGIN_ERROR_PASS;
        }
    }

}

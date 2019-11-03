package com.firecloud.function.sys.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.firecloud.function.sys.domain.Devinfo;
import com.firecloud.function.sys.service.DevinfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("sys")
public class SystemController {

    @Autowired
    private DevinfoService devinfoService;

    /**
     * 调转到登录页面
     * @return
     */
    @RequestMapping("/toLogin")
    public String toLogin() {

        List<Devinfo> devinfoList = this.devinfoService.list();


        return "system/index/login";
    }

    /**
     * 跳转到首页
     * @return
     */
    @RequestMapping("index")
    public String index() {
        //System.out.println("跳转到templates/system/index/index");
        return "system/index/index";
    }


    /**
     * 内容中心，首页
     * @return
     */
    @RequestMapping("toDeskManager")
    public String toDeskManager() {

        return "system/index/deskManager";
    }

    /**
     * 跳转到日志管理
     */

    @RequestMapping("toLoginfoManager")
    public String toLoginfoManager() {
        return "loginfo/loginfoManager";
    }

    /**
     * 跳转到公告通知
     * @return
     */
    @RequestMapping("toNoticeManager")
    public String toNoticeManager() {

        return "system/notice/noticeManager";
    }

}

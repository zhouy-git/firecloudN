package com.firecloud.function.sys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("sys")
public class SystemController {
    /**
     * 调转到登录页面
     * @return
     */
    @RequestMapping("/toLogin")
    public String toLogin() {
        return "system/index/login";
    }
    /**
     * 跳转到首页
     * @return
     */
    @RequestMapping("index")
    public String index() {
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

    @RequestMapping("toBuildInfo")
    public String toBuildInfo() {

        return "statistical/buildInfo";
    }
}

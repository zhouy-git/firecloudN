package com.firecloud.function.sys.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("${api-url}")
public class GetPageController {
    /**
     * 跳转到pageName的页面
     * @param modelAndView
     * @param pageName
     * @return
     */
    @RequestMapping("/getPage")
    public ModelAndView getPage(ModelAndView modelAndView, String pageName) {

        modelAndView.setViewName(pageName);

        return modelAndView;
    }

    @RequestMapping("dealAlarmReport")
    public String dealAlarmReport() {
        return "dealAlarm/report";
    }
}

package com.firecloud.function.sys.controller;

import com.firecloud.function.sys.common.DataGridView;
import com.firecloud.function.sys.common.WebUtils;
import com.firecloud.function.sys.domain.AlertProcessing;
import com.firecloud.function.sys.service.AlertProcessingService;
import com.firecloud.function.sys.service.DevAlermService;
import com.firecloud.function.sys.service.DevinfoService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;

@Slf4j
@Controller
@RequestMapping("main")
public class IndexMainController {

    @Autowired
    private DevinfoService devinfoService;

    @Autowired
    private DevAlermService devAlermService;

    @Autowired
    private AlertProcessingService processingService;

    /**
     *
     * @return
     */
    @ResponseBody
    @RequestMapping("week")
    public DataGridView getResWeek() {
        Map<String, Object> map = new HashMap<>();
        ArrayList<String> categories = new ArrayList<>();
        //获取近一周的日期
        List<String> parDay = WebUtils.getDays(7);
        for (String days : parDay) {
            categories.add(days);
        }

        map.put("categories", categories);
        List<Integer> data = this.devinfoService.getIndexEcharDataByWM(parDay);
        map.put("datas", data);
        return new DataGridView(map);
    }

    /**
     * 根据月份获取数据
     * @return
     */
    @ResponseBody
    @RequestMapping("month")
    public DataGridView getmonth() {
        Map<String, Object> map = new HashMap<>();
        List<String> categories = WebUtils.getMonths();
        List<Integer> datas = this.devinfoService.getMainDataByMonth(categories);
        map.put("categories", categories);
        map.put("data", datas);
        return new DataGridView(map);
    }

    /**
     * 首页报警数据
     * @return
     */
    @ResponseBody
    @RequestMapping("mainMapRes")
    public Map mainMapRes() {
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
      return map;
    }

    @RequestMapping("dealAlarmReport")
    public String dealAlarmReport(){
        return "dealAlarm/report";
    }

    /**
     * 首页滚动的报警信息
     * @param modelMap
     * @return
     */
    @RequestMapping("getTopShowMain")
    public ModelAndView getTopShowMain(ModelMap modelMap) {
        List<AlertProcessing> processingList = this.processingService.getTopShowMain(10);
        modelMap.addAttribute("processingList", processingList);
        return new ModelAndView( "system/index/main","alerModel", modelMap);
    }
}

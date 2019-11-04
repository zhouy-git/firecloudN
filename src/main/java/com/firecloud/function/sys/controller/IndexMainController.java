package com.firecloud.function.sys.controller;

import com.firecloud.function.sys.common.DataGridView;
import com.firecloud.function.sys.common.WebUtils;
import com.firecloud.function.sys.service.DevinfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.*;


@RestController
@RequestMapping("main")
public class IndexMainController {

    @Autowired
    private DevinfoService devinfoService;

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


    @RequestMapping("month")
    public DataGridView getmonth() {
        Map<String, Object> map = new HashMap<>();
        List<String> categories = WebUtils.getMonths();

        List<Integer> datas = this.devinfoService.getMainDataByMonth(categories);
        map.put("categories", categories);
        map.put("data", datas);
        return new DataGridView(map);
    }

    public String main(ModelMap map) {


        return null;
    }

}

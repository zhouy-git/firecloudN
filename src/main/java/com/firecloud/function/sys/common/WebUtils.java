package com.firecloud.function.sys.common;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class WebUtils {
    /**
     * 得到request
     */
    public static HttpServletRequest getRequest() {

        //当前这个对象没有被Spring管理 被得到的方式
        ServletRequestAttributes requestAttributes =
                (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = requestAttributes.getRequest();
        return request;
    }
    /**
     * 得到Session
     * @return
     */
    public static HttpSession getSession() {
        return getRequest().getSession();
    }
    /**
     * .Description://根据字符日期返回星期几
     * .Author:麦克劳林
     * .@Date: 2018/12/29
     */
    public static String getWeek(String dateTime){
        String week = "";
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
        try {
            Date date = sdf.parse(dateTime);
            SimpleDateFormat dateFm = new SimpleDateFormat("EEEE");
            week = dateFm.format(date);
            /*week=week.replaceAll("星期","周");*/
        }catch (ParseException e){
            e.printStackTrace();
        }
        return week;
    }
    /**
     * 获取过去7天内的日期数组
     * @param intervals      intervals天内
     * @return              日期数组
     */
    public static ArrayList<String> getDays(int intervals) {
        ArrayList<String> pastDaysList = new ArrayList<>();
        for (int i = intervals -1; i >= 0; i--) {
            pastDaysList.add(getPastDate(i));
        }
        return pastDaysList;
    }
    /**
     * 获取过去第几天的日期
     * @param past
     * @return
     */
    public static String getPastDate(int past) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.DAY_OF_YEAR, calendar.get(Calendar.DAY_OF_YEAR) - past);
        Date today = calendar.getTime();
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
        String result = format.format(today);
        return result;
    }

    /**
     * 获取月份
     * @return
     */
    public static List<String> getMonths() {
        List<String> monthList = new ArrayList<>();
        for (int i=1; i>=-2; i-- ) {
            Calendar calendar=Calendar.getInstance();//构造出来表示当前时间的日历类
            System.out.println(i);
            calendar.add(Calendar.MONTH, i);
            int year = calendar.get(Calendar.YEAR);
            String months = String.format("%02d",calendar.get(Calendar.MONTH));
            String res = year +""+months;
            monthList.add(res.trim());
        }
        return monthList;
    }
}

package com.firecloud.function.sys.common;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class WebUtils {

    /**
     * 得到request
     */

    public static HttpServletRequest getRequest() {

        //当前这个对象没有被Spring管理 被得到的方式
        ServletRequestAttributes requestAttributes =
                (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = requestAttributes.getRequest();
        System.out.println(request);
        return request;
    }

    /**
     * 得到Session
     * @return
     */
    public static HttpSession getSession() {
        return getRequest().getSession();
    }
}

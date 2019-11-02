package com.firecloud.function.sys.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.firecloud.function.sys.common.DataGridView;
import com.firecloud.function.sys.common.ResultObj;
import com.firecloud.function.sys.common.WebUtils;
import com.firecloud.function.sys.domain.Notice;
import com.firecloud.function.sys.domain.User;
import com.firecloud.function.sys.service.NoticeService;
import com.firecloud.function.sys.vo.LoginfoVo;
import com.firecloud.function.sys.vo.NoticeVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author 老雷
 * @since 2019-10-15
 */
@RestController
@RequestMapping("notice")
public class NoticeController {

    @Autowired
    private NoticeService noticeService;

    @RequestMapping("loadAllNotice")
    public DataGridView loadAllNotice(NoticeVo noticeVo) {


        IPage<Notice> page = new Page<>(noticeVo.getPage(), noticeVo.getLimit());

        QueryWrapper<Notice> queryWrapper = new QueryWrapper<>();

        queryWrapper.like(StringUtils.isNoneBlank(noticeVo.getTitle()), "title", noticeVo.getTitle());

        queryWrapper.like(StringUtils.isNoneBlank(noticeVo.getOpername()), "opername", noticeVo.getOpername());
        //大于创建时间
        queryWrapper.ge(noticeVo.getStartTime()!=null, "createtime", noticeVo.getStartTime());
        //小于创建时间
        queryWrapper.le(noticeVo.getEndTime()!=null, "createtime", noticeVo.getEndTime());

        queryWrapper.orderByDesc("createtime");

        this.noticeService.page(page, queryWrapper);

        return new DataGridView(page.getTotal(), page.getRecords());
    }

    /**
     * 添加
     * @param noticeVo
     * @return
     */
    @RequestMapping("addNotice")
    public ResultObj addNotice(NoticeVo noticeVo) {
        try {

            noticeVo.setCreatetime(new Date());

            User user = (User) WebUtils.getSession().getAttribute("user");
            noticeVo.setOpername(user.getName());
            this.noticeService.save(noticeVo);
            return ResultObj.ADD_SUCCESS;

        }catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    @RequestMapping("updatNotice")
    public ResultObj updatNotice(NoticeVo noticeVo) {

        try{
            this.noticeService.updateById(noticeVo);
            return ResultObj.UPDATE_SUCCESS;
        }catch (Exception e) {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }


    }


    /**
     * 根据id删除
     * @param id
     * @return
     */
    @RequestMapping("deleteNotice")
    public ResultObj deleteNotice(Integer id) {

        try {
            this.noticeService.removeById(id);
            return ResultObj.DELETE_SUCCESS;
        }catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }

    }

    /**
     * 批量删除
     * @param loginfoVo
     * @return
     */
    @RequestMapping("batchDeleteNotice")
    public ResultObj batchDeleteNotice(LoginfoVo loginfoVo) {

        try {
            ArrayList<Serializable> idList = new ArrayList<>();
            for (Integer id : loginfoVo.getIds()) {
                idList.add(id);
            }
            this.noticeService.removeByIds(idList);
            return ResultObj.DELETE_SUCCESS;
        }catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }

    }


}


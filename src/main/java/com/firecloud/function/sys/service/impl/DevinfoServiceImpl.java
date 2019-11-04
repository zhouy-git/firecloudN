package com.firecloud.function.sys.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.firecloud.function.sys.common.Constast;
import com.firecloud.function.sys.domain.Devinfo;
import com.firecloud.function.sys.mapper.DevinfoMapper;
import com.firecloud.function.sys.service.DevinfoService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zhouy
 * @since 2019-10-23
 */
@Service
public class DevinfoServiceImpl extends ServiceImpl<DevinfoMapper, Devinfo> implements DevinfoService {

    public List<Devinfo> GetDevAlllist(Integer statusId) {
        QueryWrapper<Devinfo> queryWrapper = new QueryWrapper<>();
        if (statusId == Constast.NORMARL) {
            queryWrapper.lambda().ne(Devinfo::getDevStatus, statusId);
        }else if (statusId == 2){
            queryWrapper.lambda().in(Devinfo::getDevStatus, 3,7,11,15);
        }else if (statusId == 3){
            queryWrapper.lambda().in(Devinfo::getDevStatus, 2,9,10);
        }else {
            queryWrapper.lambda().eq(Devinfo::getDevStatus, 4);
        }
        List<Devinfo> list = this.getBaseMapper().selectList(queryWrapper);
        return list;
    }



    @Override
    public List<Integer> getIndexEcharDataByWM(List<String> param) {
        List<Integer> integerList = new ArrayList<>();
        for (String date : param) {
            if (date != null) {
                QueryWrapper<Devinfo> queryWrapper = new QueryWrapper<>();
                queryWrapper.lambda().ne(Devinfo::getDevStatus, 1);
                queryWrapper.lambda().ne(Devinfo::getDataDate, date);
                List<Devinfo> list = this.baseMapper.selectList(queryWrapper);
                integerList.add(list.size());
            }
        }
        return integerList;
    }

    @Override
    public List<Integer> getMainDataByMonth(List<String> param) {
        List<Integer> resList = new ArrayList<>();
        for (String month : param) {
            if (month != null) {
                QueryWrapper<Devinfo> queryWrapper = new QueryWrapper<>();
                queryWrapper.lambda().ne(Devinfo::getDevStatus, 1);
                queryWrapper.lambda().like(Devinfo::getDataDate, month);
                List<Devinfo> list = this.baseMapper.selectList(queryWrapper);
                resList.add(list.size());
            }
        }

        return resList;
    }
}

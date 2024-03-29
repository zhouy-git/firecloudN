package com.firecloud.function.sys;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.firecloud.function.sys.common.Constast;
import com.firecloud.function.sys.domain.Permission;
import com.firecloud.function.sys.mapper.DevAlermMapper;
import com.firecloud.function.sys.service.AlertProcessingService;
import com.firecloud.function.sys.service.DevAlermService;
import com.firecloud.function.sys.service.PermissionService;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.redis.RedisProperties;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.connection.jedis.JedisConnection;
import org.springframework.data.redis.core.ListOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.test.context.junit4.SpringRunner;
import redis.clients.jedis.Jedis;

import javax.annotation.Resource;
import java.util.List;


@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class FireCloudFunctionTests {

   @Resource
   private RedisTemplate redisTemplate;

   @Autowired
   private PermissionService permissionService;

    @Test
    public void contextLoads() {

        String key = "key_menu" ;

        ListOperations<String, Permission> operations = redisTemplate.opsForList();

        if (redisTemplate.hasKey(key)) {
            List<Permission> permissionList = operations.range(key, 0, -1);
            for (Permission p : permissionList) {
                log.info("测试数据从缓存取出成功=======》"+p.getId());
            }

        }else {
            List<Permission> list = this.permissionService.list();
            operations.leftPushAll(key,list);
            log.info("测试数据缓存成功=======》"+ list);
        }

        //System.out.println("connect is OK============>"+new Jedis("39.104.16.168",6379).ping());
    }

    @Autowired
    private AlertProcessingService AlermService;

    @Test
    public void testMybatisPlus() {
        log.info("获取首页滚动的数据"+this.AlermService.getTopShowMain(10));
    }

}

package com.firecloud.function;


import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@MapperScan(basePackages = {"com.firecloud.function.sys.mapper"})
@EnableCaching
@EnableScheduling //开启定时器
public class FireCloudFunction {
    public static void main(String[] args) {
        SpringApplication.run(FireCloudFunction.class, args);
    }
}

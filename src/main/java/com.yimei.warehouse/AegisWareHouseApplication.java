package com.yimei.warehouse;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.core.env.Environment;

import java.net.InetAddress;
import java.net.UnknownHostException;

@SpringBootApplication
@Slf4j
public class AegisWareHouseApplication {

    public static void main(String[] args) throws UnknownHostException {
        SpringApplication app = new SpringApplication(AegisWareHouseApplication.class);
        Environment env = app.run(args).getEnvironment();
        log.info("Access URLs:\n----------------------------------------------------------\n\t" +
                        "Local: \t\thttp://127.0.0.1:{}\n\t" +
                        "External: \thttp://{}:{}\n----------------------------------------------------------",
                env.getProperty("server.port"), InetAddress.getLocalHost().getHostAddress(),
                env.getProperty("server.port"));
//        adminSession.login(new UserObject(String.valueOf(1), "admin", "超级管理员", "15618177577", "1134005157@qq.com", new Date()));
    }

//    @Bean
//    public CommandLineRunner init(AdminSession adminSession) {
//        return new CommandLineRunner() {
//            @Override
//            public void run(String... strings) throws Exception {
//
//            }
//        };
//    }
}

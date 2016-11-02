package com.yimei.warehouse;

import com.yimei.warehouse.config.session.AdminSession;
import com.yimei.warehouse.representation.admin.user.UserObject;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.core.env.Environment;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Date;

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
    }

    @Bean
    public CommandLineRunner init(AdminSession adminSession) {
        return new CommandLineRunner() {
            @Override
            public void run(String... strings) throws Exception {
                adminSession.login(new UserObject(String.valueOf(1), "admin", "超级管理员", "15618177577", "1134005157@qq.com", new Date()));
            }
        };
    }
}

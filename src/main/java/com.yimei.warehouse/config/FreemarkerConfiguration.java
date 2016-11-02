package com.yimei.warehouse.config;

import freemarker.template.TemplateModelException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.AutoConfigureAfter;
import org.springframework.boot.autoconfigure.freemarker.FreeMarkerAutoConfiguration;
import org.springframework.context.annotation.Configuration;

import javax.annotation.PostConstruct;
import java.io.IOException;

@Configuration
@AutoConfigureAfter({FreeMarkerAutoConfiguration.class})
public class FreemarkerConfiguration extends FreeMarkerAutoConfiguration.FreeMarkerWebConfiguration {

    @Autowired
    protected freemarker.template.Configuration configuration;

    @Value("${ssourl.env}")
    private String SSOURL;
    @Value("${sso.protocol}")
    private String SSOPROTOCOL;
    @Value("${sitepage}")
    private String SITEPAGE;
    @Value("${logisticspage}")
    private String LOGISTICSPAGE;
    @Value("${pay.env}")
    private String PAYURL;
    @Value("${bidpage}")
    private String BIDPAGE;


    @Value("${info.page}")
    private String INFOPAGE;

    @Value("${spring.profiles}")
    private String ENV;


    @PostConstruct
    void FreeMarkerConfigurer() throws TemplateModelException, IOException {

        configuration.setSharedVariable("staticPathAdmin","/static/admin");
        configuration.setSharedVariable("title","易煤网");
        configuration.setSharedVariable("ssoMemberUrl",SSOPROTOCOL+"://"+SSOURL);
        configuration.setSharedVariable("payUrl",SSOPROTOCOL+"://"+PAYURL);
        configuration.setSharedVariable("sitepage",SITEPAGE);
        configuration.setSharedVariable("bidpage",BIDPAGE);
        configuration.setSharedVariable("logisticspage",LOGISTICSPAGE);
        configuration.setSharedVariable("infopage",INFOPAGE);
//        configuration.setSharedVariable("session", sessionMethod);
        configuration.setSharedVariable("env", ENV);

    }
}




package com.yimei.warehouse.config;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import javax.validation.Validator;
import java.nio.charset.Charset;
import java.util.List;

@Configuration
public class MvcConfig extends WebMvcConfigurerAdapter {

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addRedirectViewController("/swagger/v2/api-docs", "/v2/api-docs?group=restful-api");
        registry.addRedirectViewController("/swagger/swagger-resources/configuration/ui", "/swagger-resources/configuration/ui");
        registry.addRedirectViewController("/swagger/swagger-resources/configuration/security", "/swagger-resources/configuration/security");
        registry.addRedirectViewController("/swagger/swagger-resources", "/swagger-resources");
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/static/admin/**").addResourceLocations("file:./frontend-admin/src/");
        registry.addResourceHandler("/static/site/**").addResourceLocations("file:./frontend-site/src/");
        registry.addResourceHandler("/files/**").addResourceLocations("file:../files/");
        registry.addResourceHandler("/swagger/swagger-ui.html**").addResourceLocations("classpath:/META-INF/resources/swagger-ui.html");
        registry.addResourceHandler("/swagger/webjars/**").addResourceLocations("classpath:/META-INF/resources/webjars/");
    }


//    @Autowired
//    protected KittHandlerExceptionResolver kittHandlerExceptionResolver;
//    @Autowired
//    protected AdminACLInterceptor adminACLInterceptor;
    @Autowired
    protected ObjectMapper objectMapper;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
//        registry.addInterceptor(adminACLInterceptor).addPathPatterns("/warehouse/admin/**", "/api/warehouse/admin/**").excludePathPatterns("/api/warehouse/admin/login", "/api/warehouse/admin");
    }

//    @Override
//    public void configureHandlerExceptionResolvers(List<HandlerExceptionResolver> exceptionResolvers) {
//        exceptionResolvers.add(kittHandlerExceptionResolver);
//    }

    //添加信息转换器
    @Override
    public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
        converters.add(new StringHttpMessageConverter(Charset.forName("UTF-8")));
    }

//    @Bean
//    public EmbeddedServletContainerCustomizer containerCustomizer() {
//        return new EmbeddedServletContainerCustomizer() {
//            @Override
//            public void customize(ConfigurableEmbeddedServletContainer container) {
//                container.addErrorPages(new ErrorPage(HttpStatus.BAD_REQUEST, "/400"));
//                container.addErrorPages(new ErrorPage(HttpStatus.NOT_FOUND, "/404"));
//                container.addErrorPages(new ErrorPage(HttpStatus.UNAUTHORIZED, "/401"));
//                container.addErrorPages(new ErrorPage(HttpStatus.FORBIDDEN, "/403"));
//            }
//        };
//    }

    //JSR-303
    @Bean(name = "validator")
    public Validator createBeanValidator() {
        return new LocalValidatorFactoryBean();
    }

//    @PostConstruct
//    private void jacksonConfig() {
//        objectMapper.registerModule(new Java8TimeModule());
//        objectMapper.disable(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES);
//    }

//    @Bean
//    public CommonsRequestLoggingFilter requestLoggingFilter() {
//        CommonsRequestLoggingFilter filter = new CommonsRequestLoggingFilter();
//        filter.setIncludeClientInfo(true);
//        filter.setIncludeQueryString(true);
//        filter.setIncludePayload(true);
//        filter.setIncludeHeaders(true);
//        filter.setMaxPayloadLength(5120);
//        return filter;
//    }
}

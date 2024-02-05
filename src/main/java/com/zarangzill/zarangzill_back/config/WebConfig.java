package com.zarangzill.zarangzill_back.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.resource.EncodedResourceResolver;


@Configuration
public class WebConfig implements WebMvcConfigurer {
    @Value("${upload.Path}")
    private String uploadPath;
    @Value("${upload.path.pattern}")
    private String uploadPathPattern;

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry
                .addResourceHandler(uploadPathPattern)
                .addResourceLocations(uploadPath);/*
                .setCachePeriod(3600)
                .resourceChain(true)
                .addResolver(new EncodedResourceResolver());*/
    }
}
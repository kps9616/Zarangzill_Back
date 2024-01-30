package com.zarangzill.zarangzill_back.config;
/*
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.config.Customizer;
import org.springframework.security.web.firewall.DefaultHttpFirewall;
import org.springframework.security.web.firewall.HttpFirewall;
import org.springframework.security.web.firewall.StrictHttpFirewall;
import org.springframework.security.web.servlet.util.matcher.MvcRequestMatcher;
import org.springframework.web.servlet.handler.HandlerMappingIntrospector;

import java.util.Arrays;

import static jakarta.servlet.DispatcherType.ERROR;
import static jakarta.servlet.DispatcherType.FORWARD;



@Configuration
@EnableWebSecurity
public class SecurityConfig {

@Bean
public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
    http
            //.securityMatcher(antMatcher("/**"))
            .authorizeHttpRequests((authorize) -> authorize
                    .dispatcherTypeMatchers(FORWARD, ERROR).permitAll()
                    .requestMatchers("/resources/css/**", "/resources/js/**", "/resources/images/**").permitAll()
                    .requestMatchers("/signup","/login/**").permitAll()
                    .requestMatchers("/login","/login/**").permitAll()
                    .anyRequest().authenticated()
            )
            //.httpBasic(Customizer.withDefaults())
            .formLogin(form -> form
                    .loginPage("/login")
                    .permitAll()
            );


    return http.build();
    }

    @Bean
    MvcRequestMatcher.Builder mvc(HandlerMappingIntrospector introspector) {
        return new MvcRequestMatcher.Builder(introspector).servletPath("/spring-mvc");
    }

    @Bean
    public HttpFirewall getHttpFirewall() {
        return new DefaultHttpFirewall();
    }
}*/
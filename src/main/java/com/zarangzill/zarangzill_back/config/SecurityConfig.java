package com.zarangzill.zarangzill_back.config;

/*
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity*/
public class SecurityConfig {
    /*
        @Bean
        public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
            *//*
        http
                .authorizeHttpRequests((requests) -> requests
                        .requestMatchers("/login", "/home").permitAll()
                        .anyRequest().authenticated()
                )
                .formLogin((form) -> form
                        .loginPage("/login")
                        .permitAll()
                )
                .logout((logout) -> logout.permitAll());

        return http.build();
        *//*
        return http
                .csrf((csrf) -> csrf
                        .csrfTokenRepository(CookieCsrfTokenRepository.withHttpOnlyFalse())
                )
                .authorizeHttpRequests((authorizeRequests) -> {
                    authorizeRequests.requestMatchers("/member/**").authenticated();

                    authorizeRequests.requestMatchers("/master/**")
                            .hasAnyRole("ADMIN", "MASTER");

                    authorizeRequests.requestMatchers("/admin/**")
                            .hasRole("ADMIN");

                    authorizeRequests.anyRequest().permitAll();
                })

                .formLogin((formLogin) -> {
                    formLogin.loginPage("/login");
                })

                .build();

    }

    @Bean
    public UserDetailsService userDetailsService() {
        UserDetails user =
                User.withDefaultPasswordEncoder()
                        .username("user")
                        .password("password")
                        .roles("USER")
                        .build();

        return new InMemoryUserDetailsManager(user);
    }
    */
/*
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        try {
            http
                    // ...
                    .httpBasic(httpBasic -> httpBasic.disable())
                    .authorizeHttpRequests((authorizeExchange) -> authorizeExchange
                            .requestMatchers("/index").permitAll()
                            .anyRequest().permitAll())
                    .csrf((csrf) -> csrf.disable())
                    .formLogin(form -> form.loginPage("/login").permitAll());
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return http.build();
    }*/
}
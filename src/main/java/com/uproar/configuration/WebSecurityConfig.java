package com.uproar.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

  @Override
  protected void configure(HttpSecurity http) throws Exception {

    http
      .authorizeRequests()
      .antMatchers("/").permitAll()
      .antMatchers("/home/**").permitAll()
      .antMatchers("/h2/**").permitAll()
      .antMatchers("/css/**").permitAll()
      .antMatchers("/image/**").permitAll()
      .antMatchers("/js/**").permitAll()
      .antMatchers("/test/**").permitAll()
      .antMatchers("/files/**").permitAll()
      .antMatchers("/faivicon.ico").permitAll()
      .antMatchers("/ticket/valid").permitAll()
      .anyRequest().authenticated();

    http
      .formLogin();

    http
      .logout();

    http.headers().frameOptions().disable();
    http.csrf().disable();
  }

  @Bean
  @Override
  public UserDetailsService userDetailsService() {
    return new InMemoryUserDetailsManager(
      User.
        withDefaultPasswordEncoder()
        .username("aglc2")
        .password("password")
        .roles("USER")
        .build()
      ,
      User.
        withDefaultPasswordEncoder()
        .username("sd585")
        .password("password")
        .roles("USER")
        .build()
      ,
      User.
        withDefaultPasswordEncoder()
        .username("tn229")
        .password("password")
        .roles("USER")
        .build()
    );
  }
}
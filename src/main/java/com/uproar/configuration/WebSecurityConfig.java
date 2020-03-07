package com.uproar.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
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
      .antMatchers("/**").permitAll()
      .anyRequest().permitAll();

    http.headers().frameOptions().disable();
    http.csrf().disable();
  }

  @Bean
  @Override
  public UserDetailsService userDetailsService() {
    UserDetails user =
      User.
        withDefaultPasswordEncoder()
        .username("user")
        .password("password")
        .roles("USER")
        .build();

    return new InMemoryUserDetailsManager(user);
  }
}
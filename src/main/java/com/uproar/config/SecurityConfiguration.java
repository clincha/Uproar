package com.uproar.config;

import com.uproar.service.UserDetailsService;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import static org.springframework.security.extensions.saml2.config.SAMLConfigurer.saml;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(securedEnabled = true)
@ComponentScan(basePackageClasses = UserDetailsService.class)
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

  private final UserDetailsService userDetailsService;

  @Value("${security.saml2.metadata-url}")
  String metadataUrl;

  @Value("${server.ssl.key-alias}")
  String keyAlias;

  @Value("${server.ssl.key-store-password}")
  String password;

  @Value("${server.port}")
  String port;

  @Value("${server.ssl.key-store}")
  String keyStoreFilePath;

  public SecurityConfiguration(UserDetailsService userDetailsService) {
    this.userDetailsService = userDetailsService;
  }

  @Override
  protected void configure(final HttpSecurity http) throws Exception {
    http
      .authorizeRequests()
      .antMatchers("/").permitAll()
      .antMatchers("/saml/**").permitAll()
      .antMatchers("/image/**").permitAll()
      .antMatchers("/css/**").permitAll()
      .antMatchers("/js/**").permitAll()
      .antMatchers("/h2-console/**").permitAll()
      .anyRequest().authenticated()
      .and()
      .apply(saml())
      .userDetailsService(userDetailsService)
      .serviceProvider()
      .keyStore()
      .storeFilePath(this.keyStoreFilePath)
      .password(this.password)
      .keyname(this.keyAlias)
      .keyPassword(this.password)
      .and()
      .protocol("https")
      .hostname(String.format("%s:%s", "localhost", this.port))
      .basePath("/")
      .and()
      .identityProvider()
      .metadataFilePath(this.metadataUrl);
  }
}

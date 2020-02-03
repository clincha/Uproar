package com.uproar.config;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.MultiThreadedHttpConnectionManager;
import org.apache.velocity.app.VelocityEngine;
import org.opensaml.saml2.metadata.provider.HTTPMetadataProvider;
import org.opensaml.saml2.metadata.provider.MetadataProvider;
import org.opensaml.saml2.metadata.provider.MetadataProviderException;
import org.opensaml.xml.parse.ParserPool;
import org.opensaml.xml.parse.StaticBasicParserPool;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.DefaultResourceLoader;
import org.springframework.core.io.Resource;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.saml.SAMLAuthenticationProvider;
import org.springframework.security.saml.SAMLBootstrap;
import org.springframework.security.saml.SAMLDiscovery;
import org.springframework.security.saml.SAMLEntryPoint;
import org.springframework.security.saml.SAMLLogoutFilter;
import org.springframework.security.saml.SAMLLogoutProcessingFilter;
import org.springframework.security.saml.SAMLProcessingFilter;
import org.springframework.security.saml.SAMLWebSSOHoKProcessingFilter;
import org.springframework.security.saml.context.SAMLContextProviderImpl;
import org.springframework.security.saml.key.JKSKeyManager;
import org.springframework.security.saml.key.KeyManager;
import org.springframework.security.saml.log.SAMLDefaultLogger;
import org.springframework.security.saml.metadata.CachingMetadataManager;
import org.springframework.security.saml.metadata.ExtendedMetadata;
import org.springframework.security.saml.metadata.ExtendedMetadataDelegate;
import org.springframework.security.saml.metadata.MetadataDisplayFilter;
import org.springframework.security.saml.metadata.MetadataGenerator;
import org.springframework.security.saml.metadata.MetadataGeneratorFilter;
import org.springframework.security.saml.parser.ParserPoolHolder;
import org.springframework.security.saml.processor.HTTPArtifactBinding;
import org.springframework.security.saml.processor.HTTPPAOS11Binding;
import org.springframework.security.saml.processor.HTTPPostBinding;
import org.springframework.security.saml.processor.HTTPRedirectDeflateBinding;
import org.springframework.security.saml.processor.HTTPSOAP11Binding;
import org.springframework.security.saml.processor.SAMLBinding;
import org.springframework.security.saml.processor.SAMLProcessorImpl;
import org.springframework.security.saml.util.VelocityFactory;
import org.springframework.security.saml.websso.ArtifactResolutionProfile;
import org.springframework.security.saml.websso.ArtifactResolutionProfileImpl;
import org.springframework.security.saml.websso.SingleLogoutProfile;
import org.springframework.security.saml.websso.SingleLogoutProfileImpl;
import org.springframework.security.saml.websso.WebSSOProfile;
import org.springframework.security.saml.websso.WebSSOProfileConsumer;
import org.springframework.security.saml.websso.WebSSOProfileConsumerHoKImpl;
import org.springframework.security.saml.websso.WebSSOProfileConsumerImpl;
import org.springframework.security.saml.websso.WebSSOProfileECPImpl;
import org.springframework.security.saml.websso.WebSSOProfileImpl;
import org.springframework.security.saml.websso.WebSSOProfileOptions;
import org.springframework.security.web.DefaultSecurityFilterChain;
import org.springframework.security.web.FilterChainProxy;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.access.channel.ChannelProcessingFilter;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.security.web.authentication.logout.LogoutHandler;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.security.web.authentication.logout.SimpleUrlLogoutSuccessHandler;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;
import org.springframework.security.web.csrf.CsrfFilter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Timer;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(securedEnabled = true)
public class SecurityConfiguration extends WebSecurityConfigurerAdapter implements InitializingBean, DisposableBean {

  private Timer backgroundTaskTimer;
  private MultiThreadedHttpConnectionManager multiThreadedHttpConnectionManager;

  @Bean
  public static SAMLBootstrap samlBootstrap() {
    return new SAMLBootstrap();
  }

  public void init() {
    this.backgroundTaskTimer = new Timer(true);
    this.multiThreadedHttpConnectionManager = new MultiThreadedHttpConnectionManager();
  }

  public void shutdown() {
    this.backgroundTaskTimer.purge();
    this.backgroundTaskTimer.cancel();
    this.multiThreadedHttpConnectionManager.shutdown();
  }

  @Bean
  public VelocityEngine velocityEngine() {
    return VelocityFactory.getEngine();
  }

  @Bean(initMethod = "initialize")
  public StaticBasicParserPool parserPool() {
    return new StaticBasicParserPool();
  }

  @Bean(name = "parserPoolHolder")
  public ParserPoolHolder parserPoolHolder() {
    return new ParserPoolHolder();
  }

  @Bean
  public HttpClient httpClient() {
    return new HttpClient(this.multiThreadedHttpConnectionManager);
  }

  @Bean
  public SAMLAuthenticationProvider samlAuthenticationProvider() {
    SAMLAuthenticationProvider samlAuthenticationProvider = new SAMLAuthenticationProvider();
    samlAuthenticationProvider.setForcePrincipalAsString(false);
    return samlAuthenticationProvider;
  }

  @Bean
  public SAMLContextProviderImpl contextProvider() {
    return new SAMLContextProviderImpl();
  }

  @Bean
  public SAMLDefaultLogger samlLogger() {
    return new SAMLDefaultLogger();
  }

  @Bean
  public WebSSOProfileConsumer webSSOprofileConsumer() {
    return new WebSSOProfileConsumerImpl();
  }

  @Bean
  public WebSSOProfileConsumerHoKImpl hokWebSSOprofileConsumer() {
    return new WebSSOProfileConsumerHoKImpl();
  }

  @Bean
  public WebSSOProfile webSSOprofile() {
    return new WebSSOProfileImpl();
  }

  @Bean
  public WebSSOProfileConsumerHoKImpl hokWebSSOProfile() {
    return new WebSSOProfileConsumerHoKImpl();
  }

  @Bean
  public WebSSOProfileECPImpl ecpprofile() {
    return new WebSSOProfileECPImpl();
  }

  @Bean
  public SingleLogoutProfile logoutprofile() {
    return new SingleLogoutProfileImpl();
  }

  @Bean
  public KeyManager keyManager() {
    DefaultResourceLoader loader = new DefaultResourceLoader();
    Resource storeFile = loader.getResource("classpath:keystore.p12");
    String storePass = "password";
    Map<String, String> passwords = new HashMap<String, String>();
    passwords.put("tomcat", "password");
    String defaultKey = "tomcat";
    return new JKSKeyManager(storeFile, storePass, passwords, defaultKey);
  }

  @Bean
  public WebSSOProfileOptions defaultWebSSOProfileOptions() {
    WebSSOProfileOptions webSSOProfileOptions = new WebSSOProfileOptions();
    webSSOProfileOptions.setIncludeScoping(false);
    return webSSOProfileOptions;
  }

  @Bean
  public SAMLEntryPoint samlEntryPoint() {
    SAMLEntryPoint samlEntryPoint = new SAMLEntryPoint();
    samlEntryPoint.setDefaultProfileOptions(defaultWebSSOProfileOptions());
    return samlEntryPoint;
  }

  @Bean
  public ExtendedMetadata extendedMetadata() {
    ExtendedMetadata extendedMetadata = new ExtendedMetadata();
    extendedMetadata.setIdpDiscoveryEnabled(true);
    extendedMetadata.setSigningAlgorithm("http://www.w3.org/2001/04/xmldsig-more#rsa-sha256");
    extendedMetadata.setSignMetadata(true);
    extendedMetadata.setEcpEnabled(true);
    return extendedMetadata;
  }

  @Bean
  public SAMLDiscovery samlIDPDiscovery() {
    SAMLDiscovery idpDiscovery = new SAMLDiscovery();
    idpDiscovery.setIdpSelectionPath("/saml/discovery");
    return idpDiscovery;
  }

  @Bean
  @Qualifier("idp-ssocircle")
  public ExtendedMetadataDelegate ssoCircleExtendedMetadataProvider()
    throws MetadataProviderException {
    String idpSSOCircleMetadataURL = "https://sso.id.kent.ac.uk/idp/saml2/idp/metadata.php";
    HTTPMetadataProvider httpMetadataProvider = new HTTPMetadataProvider(
      this.backgroundTaskTimer, httpClient(), idpSSOCircleMetadataURL);
    httpMetadataProvider.setParserPool(parserPool());
    ExtendedMetadataDelegate extendedMetadataDelegate =
      new ExtendedMetadataDelegate(httpMetadataProvider, extendedMetadata());
    extendedMetadataDelegate.setMetadataTrustCheck(false);
    extendedMetadataDelegate.setMetadataRequireSignature(false);
    backgroundTaskTimer.purge();
    return extendedMetadataDelegate;
  }

  @Bean
  @Qualifier("metadata")
  public CachingMetadataManager metadata() throws MetadataProviderException {
    List<MetadataProvider> providers = new ArrayList<MetadataProvider>();
    providers.add(ssoCircleExtendedMetadataProvider());
    return new CachingMetadataManager(providers);
  }

  @Bean
  public MetadataGenerator metadataGenerator() {
    MetadataGenerator metadataGenerator = new MetadataGenerator();
    metadataGenerator.setEntityId("uk:co:uproar");
    metadataGenerator.setExtendedMetadata(extendedMetadata());
    metadataGenerator.setIncludeDiscoveryExtension(false);
    metadataGenerator.setKeyManager(keyManager());
    return metadataGenerator;
  }

  @Bean
  public MetadataDisplayFilter metadataDisplayFilter() {
    return new MetadataDisplayFilter();
  }

  @Bean
  public SavedRequestAwareAuthenticationSuccessHandler successRedirectHandler() {
    SavedRequestAwareAuthenticationSuccessHandler successRedirectHandler =
      new SavedRequestAwareAuthenticationSuccessHandler();
    successRedirectHandler.setDefaultTargetUrl("/landing");
    return successRedirectHandler;
  }

  @Bean
  public SimpleUrlAuthenticationFailureHandler authenticationFailureHandler() {
    SimpleUrlAuthenticationFailureHandler failureHandler =
      new SimpleUrlAuthenticationFailureHandler();
    failureHandler.setUseForward(true);
    failureHandler.setDefaultFailureUrl("/error");
    return failureHandler;
  }

  @Bean
  public SAMLWebSSOHoKProcessingFilter samlWebSSOHoKProcessingFilter() throws Exception {
    SAMLWebSSOHoKProcessingFilter samlWebSSOHoKProcessingFilter = new SAMLWebSSOHoKProcessingFilter();
    samlWebSSOHoKProcessingFilter.setAuthenticationSuccessHandler(successRedirectHandler());
    samlWebSSOHoKProcessingFilter.setAuthenticationManager(authenticationManager());
    samlWebSSOHoKProcessingFilter.setAuthenticationFailureHandler(authenticationFailureHandler());
    return samlWebSSOHoKProcessingFilter;
  }

  @Bean
  public SAMLProcessingFilter samlWebSSOProcessingFilter() throws Exception {
    SAMLProcessingFilter samlWebSSOProcessingFilter = new SAMLProcessingFilter();
    samlWebSSOProcessingFilter.setAuthenticationManager(authenticationManager());
    samlWebSSOProcessingFilter.setAuthenticationSuccessHandler(successRedirectHandler());
    samlWebSSOProcessingFilter.setAuthenticationFailureHandler(authenticationFailureHandler());
    return samlWebSSOProcessingFilter;
  }

  @Bean
  public MetadataGeneratorFilter metadataGeneratorFilter() {
    return new MetadataGeneratorFilter(metadataGenerator());
  }

  @Bean
  public SimpleUrlLogoutSuccessHandler successLogoutHandler() {
    SimpleUrlLogoutSuccessHandler successLogoutHandler = new SimpleUrlLogoutSuccessHandler();
    successLogoutHandler.setDefaultTargetUrl("/");
    return successLogoutHandler;
  }

  @Bean
  public SecurityContextLogoutHandler logoutHandler() {
    SecurityContextLogoutHandler logoutHandler =
      new SecurityContextLogoutHandler();
    logoutHandler.setInvalidateHttpSession(true);
    logoutHandler.setClearAuthentication(true);
    return logoutHandler;
  }

  @Bean
  public SAMLLogoutProcessingFilter samlLogoutProcessingFilter() {
    return new SAMLLogoutProcessingFilter(successLogoutHandler(),
      logoutHandler());
  }

  @Bean
  public SAMLLogoutFilter samlLogoutFilter() {
    return new SAMLLogoutFilter(successLogoutHandler(),
      new LogoutHandler[]{logoutHandler()},
      new LogoutHandler[]{logoutHandler()});
  }

  private ArtifactResolutionProfile artifactResolutionProfile() {
    final ArtifactResolutionProfileImpl artifactResolutionProfile =
      new ArtifactResolutionProfileImpl(httpClient());
    artifactResolutionProfile.setProcessor(new SAMLProcessorImpl(soapBinding()));
    return artifactResolutionProfile;
  }

  @Bean
  public HTTPArtifactBinding artifactBinding(ParserPool parserPool, VelocityEngine velocityEngine) {
    return new HTTPArtifactBinding(parserPool, velocityEngine, artifactResolutionProfile());
  }

  @Bean
  public HTTPSOAP11Binding soapBinding() {
    return new HTTPSOAP11Binding(parserPool());
  }

  @Bean
  public HTTPPostBinding httpPostBinding() {
    return new HTTPPostBinding(parserPool(), velocityEngine());
  }

  @Bean
  public HTTPRedirectDeflateBinding httpRedirectDeflateBinding() {
    return new HTTPRedirectDeflateBinding(parserPool());
  }

  @Bean
  public HTTPSOAP11Binding httpSOAP11Binding() {
    return new HTTPSOAP11Binding(parserPool());
  }

  @Bean
  public HTTPPAOS11Binding httpPAOS11Binding() {
    return new HTTPPAOS11Binding(parserPool());
  }

  @Bean
  public SAMLProcessorImpl processor() {
    Collection<SAMLBinding> bindings = new ArrayList<SAMLBinding>();
    bindings.add(httpRedirectDeflateBinding());
    bindings.add(httpPostBinding());
    bindings.add(artifactBinding(parserPool(), velocityEngine()));
    bindings.add(httpSOAP11Binding());
    bindings.add(httpPAOS11Binding());
    return new SAMLProcessorImpl(bindings);
  }

  @Bean
  public FilterChainProxy samlFilter() throws Exception {
    List<SecurityFilterChain> chains = new ArrayList<SecurityFilterChain>();
    chains.add(new DefaultSecurityFilterChain(new AntPathRequestMatcher("/saml/login/**"),
      samlEntryPoint()));
    chains.add(new DefaultSecurityFilterChain(new AntPathRequestMatcher("/saml/logout/**"),
      samlLogoutFilter()));
    chains.add(new DefaultSecurityFilterChain(new AntPathRequestMatcher("/saml/metadata/**"),
      metadataDisplayFilter()));
    chains.add(new DefaultSecurityFilterChain(new AntPathRequestMatcher("/saml/SSO/**"),
      samlWebSSOProcessingFilter()));
    chains.add(new DefaultSecurityFilterChain(new AntPathRequestMatcher("/saml/SSOHoK/**"),
      samlWebSSOHoKProcessingFilter()));
    chains.add(new DefaultSecurityFilterChain(new AntPathRequestMatcher("/saml/SingleLogout/**"),
      samlLogoutProcessingFilter()));
    chains.add(new DefaultSecurityFilterChain(new AntPathRequestMatcher("/saml/discovery/**"),
      samlIDPDiscovery()));
    return new FilterChainProxy(chains);
  }

  @Bean
  @Override
  public AuthenticationManager authenticationManagerBean() throws Exception {
    return super.authenticationManagerBean();
  }

  @Override
  protected void configure(HttpSecurity http) throws Exception {
    http
      .httpBasic()
      .authenticationEntryPoint(samlEntryPoint());
    http
      .addFilterBefore(metadataGeneratorFilter(), ChannelProcessingFilter.class)
      .addFilterAfter(samlFilter(), BasicAuthenticationFilter.class)
      .addFilterBefore(samlFilter(), CsrfFilter.class);
    http
      .authorizeRequests()
      .antMatchers("/").permitAll()
      .antMatchers("/saml/**").permitAll()
      .antMatchers("/css/**").permitAll()
      .antMatchers("/img/**").permitAll()
      .antMatchers("/js/**").permitAll()
      .anyRequest().authenticated();
    http
      .logout()
      .disable();
  }

  @Override
  protected void configure(AuthenticationManagerBuilder auth) {
    auth.authenticationProvider(samlAuthenticationProvider());
  }

  @Override
  public void afterPropertiesSet() {
    init();
  }

  @Override
  public void destroy() {
    shutdown();
  }

}

package com.uproar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class AuthenticationController {

  @GetMapping("/login")
  public ModelAndView login(HttpServletRequest request) {
    if ("error".equals(request.getQueryString())) {
      return new ModelAndView("authentication/loginError");
    } else if ("logout".equals(request.getQueryString())) {
      return new ModelAndView("authentication/logoutSuccess");
    }
    return new ModelAndView("authentication/login");
  }

}

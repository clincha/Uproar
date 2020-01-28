package com.uproar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AuthenticationController {

  @GetMapping("/login")
  public ModelAndView login() {
    return new ModelAndView("authentication/login");
  }

  @GetMapping("/logout")
  public ModelAndView logout() {
    return null;
  }

}

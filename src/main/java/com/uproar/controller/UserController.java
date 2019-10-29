package com.uproar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/user")
public class UserController {

  @GetMapping("/tickets")
  public ModelAndView tickets() {
    return null;
  }

  @GetMapping("/events")
  public ModelAndView events() {
    return null;
  }

  @GetMapping("/societies")
  public ModelAndView societies() {
    return null;
  }

  @GetMapping("/settings")
  public ModelAndView settings() {
    return null;
  }


}

package com.uproar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author Sam Donnelly
 * @version 25/10/2019
 **/
@Controller
public class mainController {

  @GetMapping("/")
  public ModelAndView homepage() {
    return new ModelAndView("header");
  }

}

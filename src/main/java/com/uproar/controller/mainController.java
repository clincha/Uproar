package com.uproar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author Angus Clinch
 * @version 11/10/2019
 **/
@Controller
public class mainController {

  @GetMapping("/")
  public String homepage() {
    return "Angus";
  }

}

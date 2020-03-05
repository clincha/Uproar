package com.uproar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/test")
public class TestController {

  @GetMapping("/files")
  public ModelAndView getTestPageForFileStorage() {
    return new ModelAndView("fileStorage/fileStorage");
  }

}

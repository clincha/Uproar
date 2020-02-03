package com.uproar.controller;

import com.uproar.service.SocietiesService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/society")
public class SocietiesController {

  private SocietiesService societiesService;

  public SocietiesController(SocietiesService societiesService) {
    this.societiesService = societiesService;
  }

  @GetMapping("/mySocieties")
  public ModelAndView mySocieties() {
    return new ModelAndView("societies/mySocieties")
      .addObject("societies", societiesService.getMySocieties());
  }

  @GetMapping("/create")
  public ModelAndView createSociety() {
    return new ModelAndView("societies/createSociety");
  }

  @PostMapping("/create")
  public ModelAndView createSocietyPost() {
    return new ModelAndView("societies/society");
  }
}

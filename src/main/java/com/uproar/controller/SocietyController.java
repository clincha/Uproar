package com.uproar.controller;

import com.uproar.service.EventService;
import com.uproar.service.SocietyService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SocietyController {

  private EventService eventService;
  private SocietyService societyService;

  public SocietyController(EventService eventService, SocietyService societyService) {
    this.eventService = eventService;
    this.societyService = societyService;
  }

  @GetMapping("/societies")
  public ModelAndView homepage() {
    return new ModelAndView("societies/MySocieties")
      .addObject("SocialLinks", societyService.getSocialLinks())
      .addObject("events", eventService.getAllEvents());
  }

  @GetMapping("/rugby}")
  public ModelAndView Rugby() {
    return new ModelAndView("societies/societies")
            .addObject("SocialLinks", societyService.getSocialLinks())
            .addObject("events", eventService.getAllEvents());

  }
}

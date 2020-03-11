package com.uproar.controller;

import com.uproar.service.EventService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

  private EventService eventService;

  public MainController(EventService eventService) {
    this.eventService = eventService;
  }

  @GetMapping("/")
  public ModelAndView homepage() {
    return new ModelAndView("events/events")
      .addObject("events", eventService.getPopularEvents());
  }

}

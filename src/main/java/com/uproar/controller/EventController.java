package com.uproar.controller;

import com.uproar.entity.Event;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author Angus Clinch
 * @version 18/02/2020
 **/
@Controller
public class EventController {

  @PostMapping("/create")
  public ModelAndView createEvent(Event event) {
    System.out.println(event.getName());
    System.out.println(event.getLocation());
    return new ModelAndView("events/event")
      .addObject("event", event);
  }

}

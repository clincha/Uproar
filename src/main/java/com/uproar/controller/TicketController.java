package com.uproar.controller;

import com.uproar.service.EventService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/ticket")
public class TicketController {

  private EventService eventService;

  public TicketController(EventService eventService) {
    this.eventService = eventService;
  }

  @GetMapping("/buy/{eventId}")
  public ModelAndView buyTicket(@PathVariable Long eventId) {
    return new ModelAndView("/tickets/buyTicket")
      .addObject("event", eventService.getEvent(eventId));
  }

}

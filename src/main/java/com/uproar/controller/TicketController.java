package com.uproar.controller;

import com.uproar.service.EventService;
import com.uproar.service.TicketService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/ticket")
public class TicketController {

  private EventService eventService;
  private TicketService ticketService;

  public TicketController(EventService eventService, TicketService ticketService) {
    this.eventService = eventService;
    this.ticketService = ticketService;
  }

  @GetMapping("/buy/{eventId}")
  public ModelAndView buyTicket(@PathVariable Long eventId) {
    return new ModelAndView("/tickets/buyTicket")
      .addObject("event", eventService.getEvent(eventId));
  }

  @PostMapping("/buy/{eventId}")
  public ModelAndView makePayment(@PathVariable Long eventId) {
    return new ModelAndView("/tickets/doPayment")
      .addObject("ticket", ticketService.buyTicket(eventId));
  }

  @GetMapping("/myTickets")
  public ModelAndView myTickets() {
    return new ModelAndView("/tickets/myTickets")
      .addObject("tickets", ticketService.getAllTickets());
  }

}

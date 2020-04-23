package com.uproar.controller;

import com.uproar.service.EventService;
import com.uproar.service.TicketService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
@RequestMapping("/ticket")
public class TicketController {

  private final EventService eventService;
  private final TicketService ticketService;

  public TicketController(EventService eventService, TicketService ticketService) {
    this.eventService = eventService;
    this.ticketService = ticketService;
  }

  @GetMapping("/buy/{eventId}")
  public ModelAndView buyTicket(@PathVariable Long eventId) {
    return new ModelAndView("/tickets/doPayment")
      .addObject("event", eventService.getEvent(eventId));
  }

  @PostMapping("/buy/{eventId}")
  public ModelAndView makePayment(@PathVariable Long eventId) {
    return new ModelAndView("/tickets/doPayment")
      .addObject("ticket", ticketService.buyTicket(eventId));
  }

  @GetMapping("/myTickets")
  public ModelAndView myTickets() {
    return new ModelAndView("tickets/myTickets")
      .addObject("tickets", ticketService.getAllTickets());
  }

  @PostMapping("/valid")
  @ResponseBody
  public Boolean isValidTicket(@RequestBody Map<String, Long> payload) {
    return ticketService.isTicketValid(payload.get("barcode"), payload.get("event_id"));
  }

  @GetMapping("/success")
  public ModelAndView success() {
    return new ModelAndView("tickets/paymentSuccessful");
  }

  @GetMapping("/upforgrabs")
  public ModelAndView ufg() {
    return new ModelAndView("tickets/upforgrabs");
  }
  
}

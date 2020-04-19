package com.uproar.controller;

import com.uproar.dao.EventDao;
import com.uproar.service.EventService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;

@Controller
@RequestMapping("/event")
public class EventController {

  private final EventService eventService;

  public EventController(EventService eventService) {
    this.eventService = eventService;
  }

  @GetMapping("/create")
  public ModelAndView createEventPage() {
    return new ModelAndView("events/createEvent");
  }

  @PostMapping("/create")
  public ModelAndView createEvent(EventDao eventDao) throws IOException {
    return getEvent(eventService.createEvent(eventDao).getId());
  }

  @GetMapping("/{id}")
  public ModelAndView getEvent(@PathVariable("id") long id) {
    return new ModelAndView("events/events")
      .addObject("event", eventService.getEvent(id));
  }

  @GetMapping("myEvents")
  public ModelAndView myEvents() {
    return new ModelAndView("events/myEvents")
      .addObject("events", eventService.getAllEvents());
  }

  @GetMapping("all")
  public ModelAndView allEvents() {
    return new ModelAndView("events/all")
      .addObject("events", eventService.getAllEvents());
  }

  @GetMapping("{id}/scan")
  public ModelAndView barcodeScanner(@PathVariable("id") long id) {
    return new ModelAndView("BCScanner")
      .addObject("event", eventService.getEvent(id));
  }

}

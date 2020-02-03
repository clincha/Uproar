package com.uproar.controller;

import com.uproar.entity.Event;
import com.uproar.service.EventService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/event")
public class EventController {

  private EventService eventService;

  public EventController(EventService eventService) {
    this.eventService = eventService;
  }

  @GetMapping("/create")
  public ModelAndView createEventPage() {
    return new ModelAndView("events/create event");
  }

  @PostMapping("/create")
  public ModelAndView createEvent(Event event) {
    event = eventService.createEvent(event);
    return getEvent(event.getId());
  }

  @GetMapping("/{id}")
  public ModelAndView getEvent(@PathVariable("id") long id) {
    return new ModelAndView("events/event")
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

}

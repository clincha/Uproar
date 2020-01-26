package com.uproar.service;

import com.uproar.entity.Event;
import org.springframework.stereotype.Service;

@Service
public class EventService {
  public Event getEvent(long id) {
    return new Event(id);
  }
}

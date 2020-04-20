package com.uproar.service;

import com.uproar.controller.FileStorageController;
import com.uproar.dao.EventDao;
import com.uproar.entity.Event;
import com.uproar.repositry.EventRepository;
import org.springframework.stereotype.Service;

import java.io.IOException;

@Service
public class EventService {

  private final EventRepository eventRepository;
  private final FileStorageController fileStorageController;

  public EventService(EventRepository eventRepository, FileStorageController fileStorageController) {
    this.eventRepository = eventRepository;
    this.fileStorageController = fileStorageController;
  }

  public Event getEvent(long id) {
    return eventRepository.findById(id)
      .orElse(null);
  }

  public Event createEvent(Event event) {
    return eventRepository.save(event);
  }

  public Event createEvent(EventDao eventDao) throws IOException {
    Long fileId = fileStorageController.uploadFile(eventDao.getImage())
      .getId();
    return createEvent(new Event(eventDao.getTitle(), eventDao.getSociety(), eventDao.getDescription(), fileId, eventDao.getDate(), eventDao.getTime(), eventDao.getPlace(), eventDao.getTicketNumber(), eventDao.getTicketPrice()));
  }

  public Iterable<Event> getAllEvents() {
    return eventRepository.findAll();
  }

  public Iterable<Event> getPopularEvents() {
    return eventRepository.findAll();
  }
}

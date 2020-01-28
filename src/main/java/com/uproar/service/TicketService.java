package com.uproar.service;

import com.uproar.entity.Ticket;
import com.uproar.repositry.TicketRepository;
import org.springframework.stereotype.Service;

@Service
public class TicketService {

  private TicketRepository ticketRepository;
  private EventService eventService;

  public TicketService(TicketRepository ticketRepository, EventService eventService) {
    this.ticketRepository = ticketRepository;
    this.eventService = eventService;
  }

  public Iterable<Ticket> getAllTickets() {
    return ticketRepository.findAll();
  }

  public Ticket buyTicket(Long eventId) {
    Ticket ticket = new Ticket(eventService.getEvent(eventId));
    return ticketRepository.save(ticket);
  }
}

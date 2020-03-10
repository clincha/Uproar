package com.uproar.service;

import com.uproar.entity.Ticket;
import com.uproar.repositry.TicketRepository;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
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
    String ticketHolder = ((User) SecurityContextHolder.getContext().getAuthentication().getPrincipal()).getUsername();
    Ticket ticket = new Ticket(eventService.getEvent(eventId), ticketHolder);
    return ticketRepository.save(ticket);
  }
}

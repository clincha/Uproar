package com.uproar.service;

import com.uproar.entity.Ticket;
import com.uproar.repositry.TicketRepository;
import org.springframework.stereotype.Service;

import java.util.Optional;

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

  public Boolean isTicketValid(Long barcode, Long event_id) {
    Optional<Ticket> ticket = ticketRepository.findByBarcode(barcode);
    if (ticket.isPresent()) {
      if (ticket.get().getEvent().getId().equals(event_id)) {
        if (ticket.get().isUsed()) {
          return false;
        } else {
          ticket.get().setUsed(true);
          ticketRepository.save(ticket.get());
        }
        return true;
      }
    }
    return false;
  }
}

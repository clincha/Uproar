package com.uproar.repositry;

import com.uproar.entity.Ticket;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface TicketRepository extends CrudRepository<Ticket, Long> {

  Optional<Ticket> findByBarcode(Long barcode);

}

package com.uproar.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import java.util.Random;

@Entity
public class Ticket {

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Long id;

  @ManyToOne
  private Event event;

  private long barcode;

  public Ticket() {
  }

  public Ticket(Event event) {
    this.event = event;
    Random random = new Random();
    this.barcode = (long) (Math.random() * 1000000000000L);
    ;
  }

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public Event getEvent() {
    return event;
  }

  public void setEvent(Event event) {
    this.event = event;
  }

  public long getBarcode() {
    return barcode;
  }

  public void setBarcode(long barcode) {
    this.barcode = barcode;
  }
}

package com.uproar.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import java.util.concurrent.ThreadLocalRandom;

@Entity
public class Ticket {

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Long id;

  @ManyToOne
  private Event event;

  private long barcode;

  private boolean used;

  public Ticket() {
  }

  public Ticket(Event event) {
    this.event = event;
    this.barcode = ThreadLocalRandom.current()
      .nextLong(100000000000L, 999999999999L);
    this.barcode = Long.parseLong(this.barcode + generateEANChecksum(this.barcode));
    this.used = false;
  }

  static String generateEANChecksum(long barcode) {
    long[] digits = new long[12];
    int i = 0;
    while (i < 12) {
      digits[i] = barcode % 10;
      barcode = barcode / 10;
      i += 1;
    }
    int sum = 0;
    for (int j = 0; j < digits.length; j += 2) {
      sum += digits[j] * 3 + digits[j + 1];
    }
    // Minus the sum from the sum rounded up to the nearest 10
    sum = (sum + (10 - (sum % 10))) - sum;
    return String.valueOf(sum);
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

  public boolean isUsed() {
    return used;
  }

  public void setUsed(boolean used) {
    this.used = used;
  }
}

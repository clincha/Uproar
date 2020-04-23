package com.uproar.entity;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;

import static org.junit.Assert.assertEquals;

@RunWith(JUnit4.class)
public class TicketGeneratorTest {

  @Test
  public void checkDigitTest() {
    assertEquals("5", Ticket.generateEANChecksum(717045754001L));
    assertEquals("6", Ticket.generateEANChecksum(514088828671L));
  }
}

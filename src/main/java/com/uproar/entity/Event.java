package com.uproar.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDate;
import java.time.LocalTime;

@Entity
public class Event {

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Long id;

  private String title;

  private String society;

  private String description;

  private Long imageId;

  private LocalDate date;

  private LocalTime time;

  private String place;

  private Long ticketNumber;

  private Double ticketPrice;

  public Event() {
  }

  public Event(String title, String society, String description, Long imageId, LocalDate date, LocalTime time, String place, Long ticketNumber, Double ticketPrice) {
    this.title = title;
    this.society = society;
    this.description = description;
    this.imageId = imageId;
    this.date = date;
    this.time = time;
    this.place = place;
    this.ticketNumber = ticketNumber;
    this.ticketPrice = ticketPrice;
  }

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public void setId(long id) {
    this.id = id;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getSociety() {
    return society;
  }

  public void setSociety(String society) {
    this.society = society;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public Long getImageId() {
    return imageId;
  }

  public void setImageId(Long image) {
    this.imageId = image;
  }

  public LocalDate getDate() {
    return date;
  }

  public void setDate(LocalDate date) {
    this.date = date;
  }

  public LocalTime getTime() {
    return time;
  }

  public void setTime(LocalTime time) {
    this.time = time;
  }

  public String getPlace() {
    return place;
  }

  public void setPlace(String place) {
    this.place = place;
  }

  public Long getTicketNumber() {
    return ticketNumber;
  }

  public void setTicketNumber(Long ticketNumber) {
    this.ticketNumber = ticketNumber;
  }

  public Double getTicketPrice() {
    return ticketPrice;
  }

  public void setTicketPrice(Double ticketPrice) {
    this.ticketPrice = ticketPrice;
  }

  @Override
  public String toString() {
    return "Event{" +
      "id=" + id +
      ", title='" + title + '\'' +
      ", society='" + society + '\'' +
      ", description='" + description + '\'' +
      ", imageId=" + imageId +
      '}';
  }
}

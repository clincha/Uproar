package com.uproar.dao;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDate;
import java.time.LocalTime;

public class EventDao {

  private String title;

  private String society;

  private String description;

  private MultipartFile image;

  @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
  private LocalDate date;

  private LocalTime time;

  private String place;

  private Long ticketNumber;

  private Double ticketPrice;

  public EventDao() {
  }

  public EventDao(String title, String society, String description, MultipartFile image, LocalDate date, LocalTime time, String place, Long ticketNumber, Double ticketPrice) {
    this.title = title;
    this.society = society;
    this.description = description;
    this.image = image;
    this.date = date;
    this.time = time;
    this.place = place;
    this.ticketNumber = ticketNumber;
    this.ticketPrice = ticketPrice;
  }

  @Override
  public String toString() {
    return "EventDao{" +
      "title='" + title + '\'' +
      ", society='" + society + '\'' +
      ", description='" + description + '\'' +
      ", photoName=" + image.getOriginalFilename() +
      '}';
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

  public MultipartFile getImage() {
    return image;
  }

  public void setImage(MultipartFile image) {
    this.image = image;
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
}

package com.uproar.service;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Entity
public class Society {

  @javax.persistence.Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long Id;

  private String name;

  private String description;

  private String link;

  public Society() {
  }

  public Society(String name, String description, String link) {
    this.name = name;
    this.description = description;
    this.link = link;
  }

  public Long getId() {
    return Id;
  }

  public void setId(Long id) {
    Id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public String getLink() {
    return link;
  }

  public void setLink(String link) {
    this.link = link;
  }
}

package com.uproar.dao;

import org.springframework.web.multipart.MultipartFile;

public class EventDao {

  private String title;

  private String society;

  private String description;

  private MultipartFile image;

  public EventDao() {
  }

  public EventDao(String title, String society, String description, MultipartFile image) {
    this.title = title;
    this.society = society;
    this.description = description;
    this.image = image;
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
}

package com.uproar.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

@Entity
public class File {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  private String filename;

  private String contentType;

  @Lob
  private byte[] data;

  public File() {
  }

  public File(String filename, String contentType, byte[] data) {
    this.filename = filename;
    this.contentType = contentType;
    this.data = data;
  }

  @Override
  public String toString() {
    return "FileEntity{" +
      "id=" + id +
      ", filename='" + filename + '\'' +
      ", contentType='" + contentType + '\'' +
      '}';
  }

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getFilename() {
    return filename;
  }

  public void setFilename(String filename) {
    this.filename = filename;
  }

  public String getContentType() {
    return contentType;
  }

  public void setContentType(String filetype) {
    this.contentType = filetype;
  }

  public byte[] getData() {
    return data;
  }

  public void setData(byte[] data) {
    this.data = data;
  }
}

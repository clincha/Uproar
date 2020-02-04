package com.uproar.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  private String firstName;

  private String lastName;

  private String email;

  private String password;

  private String roleName;

  private boolean isActive;

  public User() {
  }

  public User(String pFirstName, String pLastName, String pEmail, String pPassword, String pRoleName, boolean pIsActive) {
    firstName = pFirstName;
    lastName = pLastName;
    email = pEmail;
    password = pPassword;
    roleName = pRoleName;
    isActive = pIsActive;
  }

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getFirstName() {
    return firstName;
  }

  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }

  public String getLastName() {
    return lastName;
  }

  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getRoleName() {
    return roleName;
  }

  public void setRoleName(String roleName) {
    this.roleName = roleName;
  }

  public boolean isActive() {
    return isActive;
  }

  public void setActive(boolean isActive) {
    this.isActive = isActive;
  }

}
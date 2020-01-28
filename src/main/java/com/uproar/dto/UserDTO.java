package com.uproar.dto;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

public class UserDTO {

  @NotNull
  @NotEmpty
  private String firstName;

  @NotNull
  @NotEmpty
  private String lastName;

  @NotNull
  @NotEmpty
  @Email
  private String email;

  @NotNull
  @NotEmpty
  private String password;

  @NotNull
  @NotEmpty
  private String passwordConfirmation;

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

  public String getPasswordConfirmation() {
    return passwordConfirmation;
  }

  public void setPasswordConfirmation(String passwordConfirmation) {
    this.passwordConfirmation = passwordConfirmation;
  }
}

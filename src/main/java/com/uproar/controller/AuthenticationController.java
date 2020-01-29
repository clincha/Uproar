package com.uproar.controller;

import com.uproar.dto.UserDTO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AuthenticationController {

  @GetMapping("/login")
  public ModelAndView login() {
    return new ModelAndView("authentication/login");
  }

  @GetMapping("/loginError")
  public ModelAndView loginError() {
    return new ModelAndView("authentication/login")
      .addObject("error", true);
  }

  @GetMapping("/register")
  public ModelAndView register(Model model) {
    UserDTO userDTO = new UserDTO();
    model.addAttribute("user", userDTO);
    return new ModelAndView("users/createAccount");
  }

  @PostMapping("/register")
  public ModelAndView registerPost(@ModelAttribute("user") UserDTO userDTO) {
//    return AuthenticationService.createUser(userDTO);
    return null;
  }

}

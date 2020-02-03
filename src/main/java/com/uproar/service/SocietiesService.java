package com.uproar.service;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SocietiesService {

  public List<Society> getMySocieties() {
    return List.of(new Society("Angus", "Angus", "Angus"));
  }

}

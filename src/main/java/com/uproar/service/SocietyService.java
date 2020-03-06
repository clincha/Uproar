package com.uproar.service;

import com.uproar.entity.SocialLinks;
import org.springframework.stereotype.Service;

@Service
public class SocietyService {
  public SocialLinks getSocialLinks() {
    SocialLinks socialLinks = new SocialLinks();
    socialLinks.setFbLink("https://www.facebook.com/samd585");
    return socialLinks;
  }

}

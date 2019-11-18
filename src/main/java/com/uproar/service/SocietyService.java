package com.uproar.service;

import com.uproar.entity.SocialLinks;

public class SocietyService {
    public static SocialLinks getSocialLinks() {
        SocialLinks sl = new SocialLinks();
        sl.setFbLink("https://www.facebook.com/samd585");
        return sl;
    }

}

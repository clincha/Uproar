package com.uproar.service;

import com.uproar.entity.User;
import com.uproar.entity.UserDetails;
import com.uproar.repositry.UserRepository;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.saml.SAMLCredential;
import org.springframework.security.saml.userdetails.SAMLUserDetailsService;
import org.springframework.stereotype.Service;

@Service
public class UserDetailsService implements org.springframework.security.core.userdetails.UserDetailsService, SAMLUserDetailsService {

  private final UserRepository userRepository;

  public UserDetailsService(UserRepository userRepository) {
    this.userRepository = userRepository;
  }

  @Override
  public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
    User user = userRepository.findByEmail(username);
    if (user == null) {
      throw new UsernameNotFoundException(String.format("User with %s doesn't exist!", username));
    }
    return new UserDetails(user);
  }

  @Override
  public Object loadUserBySAML(SAMLCredential credential) throws UsernameNotFoundException {
    return loadUserByUsername(credential.getAttributeAsString("email"));
  }
}

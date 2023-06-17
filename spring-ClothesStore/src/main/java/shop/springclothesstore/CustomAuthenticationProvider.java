package shop.springclothesstore;

import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import shop.springclothesstore.entity.Role;
import shop.springclothesstore.entity.User;
import shop.springclothesstore.repository.UserRepository;

import java.time.LocalDateTime;
import java.util.List;

@Component
@RequiredArgsConstructor
public class CustomAuthenticationProvider implements AuthenticationProvider {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String login = authentication.getName();
        String password = authentication.getCredentials().toString();
        User userByUsername = userRepository.findUserByLogin(login);
        if (userByUsername == null) {
            throw new IllegalArgumentException("User not found");
        }

        if (passwordEncoder.matches(password, userByUsername.getPassword())) {
            Role authority = userByUsername.getRole();

            List<GrantedAuthority> authorities = List.of(new SimpleGrantedAuthority(authority.getName()));
            return new UsernamePasswordAuthenticationToken(login, password, authorities);
        } else {
            throw new IllegalArgumentException("Password mismatch");
        }
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }
}

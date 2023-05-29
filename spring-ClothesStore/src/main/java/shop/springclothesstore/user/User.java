package shop.springclothesstore.user;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import shop.springclothesstore.role.Role;

import java.util.List;

@Entity
@Table
@Getter
@Setter
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String login;
    private String password;
    private String city;
    private String country;
    private String street;
    private String postalCode;
    private String userImagePath;
    @ManyToOne
    @JoinColumn(name = "role_id")
    private Role role;
    private String contact;
}

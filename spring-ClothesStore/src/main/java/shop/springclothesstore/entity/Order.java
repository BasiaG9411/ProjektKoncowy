package shop.springclothesstore.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    private String city;
    private String country;
    private String street;
    private String postalCode;

    private BigDecimal sum;

    @ManyToMany
    @JoinTable(
            name = "order_orderline",
            joinColumns = { @JoinColumn(name = "order_id") },
            inverseJoinColumns = { @JoinColumn(name = "orderline_id") }
    )
    private List<OrderLine> orderLineList= new ArrayList<>();

    @CreationTimestamp
    private LocalDateTime creationTimestamp;

    @Enumerated(EnumType.STRING)
    private State status;
}

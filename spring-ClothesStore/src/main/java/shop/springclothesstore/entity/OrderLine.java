package shop.springclothesstore.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class OrderLine {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @OneToMany (mappedBy = "orderLine")
    private List<Product> product;

    @ManyToMany (mappedBy = "orderLineList")
    private List<Order> orders = new ArrayList<>();


    private int quantity;
    private BigDecimal price;
}

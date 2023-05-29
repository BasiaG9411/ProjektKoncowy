package shop.springclothesstore.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import shop.springclothesstore.entity.OrderLine;

@Repository
public interface OrderLineRepository extends JpaRepository<OrderLine, Long> {
}

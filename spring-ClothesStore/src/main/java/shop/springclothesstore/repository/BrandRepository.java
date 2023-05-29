package shop.springclothesstore.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import shop.springclothesstore.entity.Brand;

@Repository
public interface BrandRepository extends JpaRepository<Brand, Long> {
}

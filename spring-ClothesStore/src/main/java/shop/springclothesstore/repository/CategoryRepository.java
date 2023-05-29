package shop.springclothesstore.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import shop.springclothesstore.entity.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category,Long> {
}

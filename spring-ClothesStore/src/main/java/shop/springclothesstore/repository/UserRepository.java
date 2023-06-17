package shop.springclothesstore.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import shop.springclothesstore.entity.User;

@Repository
public interface UserRepository  extends JpaRepository<User, Long> {
    User findUserByLogin(String login);
}

package shop.springclothesstore.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import shop.springclothesstore.dao.ProductDao;
import shop.springclothesstore.repository.ProductRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductService {

    private final ProductRepository productRepository;

    public List<ProductDao> getProducts() {
        return productRepository.findAll().stream()
                .map(p -> new ProductDao(p.getId(), p.getProductName(), p.getLogo(), p.getPrice().toString()))
                .toList();
    }
}

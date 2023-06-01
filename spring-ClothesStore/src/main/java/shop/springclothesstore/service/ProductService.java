package shop.springclothesstore.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import shop.springclothesstore.entity.Product;
import shop.springclothesstore.repository.ProductRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductService {
    private final ProductRepository productRepository;

    public List<Product> getProducts(){
        return productRepository.findAll();
    }
}

package shop.springclothesstore.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import shop.springclothesstore.dto.ProductDto;
import shop.springclothesstore.repository.ProductRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductService {

    private final ProductRepository productRepository;

    public List<ProductDto> getProducts() {
        return productRepository.findAll().stream()
                .map(p -> new ProductDto(p.getId(), p.getProductName(), p.getLogo(), p.getPrice().toString()))
                .toList();
    }
}

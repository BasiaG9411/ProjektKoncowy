package shop.springclothesstore.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import shop.springclothesstore.dto.ProductDto;
import shop.springclothesstore.entity.Product;
import shop.springclothesstore.repository.ProductRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductService {

    private final ProductRepository productRepository;

    public List<ProductDto> getProducts() {
        return productRepository.findAll().stream()
                .map(p -> new ProductDto(p.getId(), p.getProductName(), p.getLogo(), p.getPrice().toString(), p.getDescription()))
                .toList();
    }

    public ProductDto getProductById(long id){
        Product product = productRepository.findById(id).orElseThrow( () -> new IllegalArgumentException("Product with id " + id + " not exists"));
        return new ProductDto(product.getId(), product.getProductName(), product.getLogo(), product.getPrice().toString(), product.getDescription());
    }
}

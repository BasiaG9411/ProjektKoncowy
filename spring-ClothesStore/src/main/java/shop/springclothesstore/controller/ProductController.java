package shop.springclothesstore.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import shop.springclothesstore.dao.ProductDao;
import shop.springclothesstore.service.ProductService;

import java.util.List;

@Controller
@RequestMapping("/products")
@RequiredArgsConstructor
@Slf4j
public class ProductController {

    private final ProductService productService;

    @GetMapping
    public String products(Model model) {
        List<ProductDao> productsFromDb = productService.getProducts();
        model.addAttribute("products", productsFromDb);
        return "products";
    }

}

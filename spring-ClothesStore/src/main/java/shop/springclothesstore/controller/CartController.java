package shop.springclothesstore.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import shop.springclothesstore.ShoppingCart;
import shop.springclothesstore.dto.ProductDto;
import shop.springclothesstore.service.ProductService;

@Controller
@RequestMapping("/cart")
@RequiredArgsConstructor
public class CartController {
    private final ShoppingCart shoppingCart;
    private final ProductService productService;

    @PostMapping("/add")
    public String add(@RequestParam(name = "productId") Long productId) {
        ProductDto productDto = productService.getProductById(productId);
        shoppingCart.addToCart(productDto);
        return "redirect:/products";
    }

    @GetMapping
    public String showCart(Model model) {
        model.addAttribute("products", shoppingCart.getProducts());
        model.addAttribute("totalCost", shoppingCart.getTotalCost() != null ? shoppingCart.getTotalCost().toString() : "0");
        int cartSize = shoppingCart.getCartSize();
        model.addAttribute("cartSize", cartSize);

        return "cart";
    }
}

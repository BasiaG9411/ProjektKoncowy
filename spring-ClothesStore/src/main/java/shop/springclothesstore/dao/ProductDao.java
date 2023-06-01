package shop.springclothesstore.dao;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductDao {
    private Long id;
    private String productName;
    private String logo;
    private String price;




}

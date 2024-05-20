package org.example.productmanagement3;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class ProductController {

    @Autowired
    ProductService service;

    @GetMapping("products")
    public List<Product> getAllProducts(){
        return service.getAllProducts();
    }

    @GetMapping("products/{productname}")
    public Product getProduct(@PathVariable String productname){

        return service.getproductByName(productname);
    }

    @PostMapping("product")
    public void addProduct(@RequestBody Product product){
        service.addproduct(product);

    }
}

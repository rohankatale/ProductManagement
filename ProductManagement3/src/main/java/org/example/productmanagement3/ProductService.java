package org.example.productmanagement3;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {

    @Autowired
    ProductDB db;

    public List<Product> getAllProducts() {

        return db.findAll();
    }

    public Product getproductByName(String productname) {
        return db.findByProductname(productname);
    }


    public void addproduct(Product product) {
        db.save(product);
    }
}

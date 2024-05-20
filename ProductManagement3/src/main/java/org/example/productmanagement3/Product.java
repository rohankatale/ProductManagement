package org.example.productmanagement3;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String productname;
    private String producttype;
    private String productplace;
    private int productwarranty;

    public Product() {}

    public Product(int id, String productname, String producttype, String productplace, int productwarranty) {
        this.id = id;
        this.productname = productname;
        this.producttype = producttype;
        this.productplace = productplace;
        this.productwarranty = productwarranty;
    }
    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", productname='" + productname + '\'' +
                ", producttype='" + producttype + '\'' +
                ", productplace='" + productplace + '\'' +
                ", productwarranty=" + productwarranty +
                '}';
    }
}

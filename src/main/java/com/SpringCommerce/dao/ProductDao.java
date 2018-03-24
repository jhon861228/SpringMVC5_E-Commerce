package com.SpringCommerce.dao;

import com.SpringCommerce.model.Product;

import java.util.List;

public interface ProductDao {

    Product getProductById(int id);

    List<Product> getAllProducts();

    void addProduct(Product product);

    void deleteProduct(int id);
}
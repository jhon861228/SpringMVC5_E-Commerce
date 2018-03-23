package com.SpringCommerce.dao;

import com.SpringCommerce.model.Product;

import java.util.List;

public interface ProductDao {

    Product getProductById(String id);

    List<Product> getAllProducts();
}
package com.afdempcomp.account.dao;


import com.afdempcomp.account.model.Product;

import java.util.List;

public interface ProductDao {

    Product getProductById(String id);


    List<Product> getAllProducts();

    void addProduct(Product product);

    void deleteProduct(String id);

    void editProduct(Product product);
}
package com.afdempcomp.account.model;

import java.util.List;

public class CartItem {

    private List<Product> product;

    private int quantity;


    public List<Product> getProduct() {
        return product;
    }
    public void setProduct(List<Product> product) {
        this.product = product;
    }
    public int getQuantity() {
        return quantity;
    }
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public CartItem(Product product) {

//        this.product = product;
//        this.quantity = quantity;
    }

    public CartItem() {
        super();
    }


}
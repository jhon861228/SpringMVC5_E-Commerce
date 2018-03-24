package com.SpringCommerce.controller;

import com.SpringCommerce.dao.ProductDao;
import com.SpringCommerce.model.Product;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.*;
import java.nio.file.*;
import java.nio.file.Path;

import java.sql.Blob;
import java.util.Base64;
import java.util.List;



@Controller
public class HomeController {

    @Autowired
    private ProductDao productDao;


    @RequestMapping("/")
    public String home() {
        return "home";
    }


    @RequestMapping("/productList")
    public String getProducts(Model model) {
        List<Product> products = productDao.getAllProducts();
        model.addAttribute("products", products);
        return "productList";
    }


    @RequestMapping("/addProduct")
    public String addProduct(Model model) {
        Product product = new Product();
        product.setProductCategory("instrument");
        product.setProductCondition("new");
        product.setProductStatus("active");

        model.addAttribute("product", product);

        return "/addProduct";
    }

    @RequestMapping(value = "/addProduct", method = RequestMethod.POST)
    public String addProductPost(@ModelAttribute("product") Product product) {

        productDao.addProduct(product);
        return "redirect:/productList";
    }




    @RequestMapping("/productList/viewProduct/{productId}")
    public String viewProduct(@PathVariable int productId, Model model) throws IOException {
        Product product = productDao.getProductById(productId);
        model.addAttribute(product);


        return "/viewProduct";
    }


    @RequestMapping(method=RequestMethod.GET, value="/getUserImage/{id}")
    public void getUserImage(HttpServletResponse response , @PathVariable("id") int productId) throws IOException{

        response.setContentType("image/jpeg");
        byte[] buffer = productDao.getProductById(productId).getPic();
        InputStream in1 = new ByteArrayInputStream(buffer);
        IOUtils.copy(in1, response.getOutputStream());
    }

}

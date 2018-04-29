package com.afdempcomp.account.web;


import com.afdempcomp.account.dao.ProductDao;
import com.afdempcomp.account.model.Product;
import com.afdempcomp.account.model.User;
import com.afdempcomp.account.service.SecurityService;
import com.afdempcomp.account.service.UserService;
import com.afdempcomp.account.validator.UserValidator;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import javax.validation.Valid;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;


@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;

    @Autowired
    private ProductDao productDao;


    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "registration";
    }


    @RequestMapping(value = "/addProduct")
    public String addProduct(Model model) {
        model.addAttribute("product", new Product());

        return "addProduct";
    }

    @RequestMapping(value = "/loginpage")
    public String loginpage(Model model) {


        return "loginPage";
    }

    @RequestMapping("/productlist")
    public String productInventory(Model model) {
        List<Product> products = productDao.getAllProducts();
        model.addAttribute("products", products);

        return "productList";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration";
        }
        userService.save(userForm);
        securityService.autologin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/welcome";
    }
//
//    @Controller
//    @RequestMapping("/uploadFile.do")
//    public class FileUploadController {


    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }


    @Transactional
    @RequestMapping(value = "/")
    public String home(Model model) {

        List<Product> products = productDao.getAllProducts();
        model.addAttribute("products", products);
        return "home";
    }

    //
//    @RequestMapping(value = "/users/profile")
//    public String profiler(Model model) {
//
//
//        return "profileClient";
//    }
    @RequestMapping(value = "profile")
    public String profiler(HttpSession session, HttpServletRequest request, Model model) {


        if (request.isUserInRole("ROLE_ADMIN")) {
            return "home";
        }
        if (request.isUserInRole("ROLE_USER")) {
            return "profileClient";
        }
        if (request.isUserInRole("ROLE_MEMBER")) {
            return "profileMember";
        } else return "404";
    }


    @RequestMapping(method = RequestMethod.GET, value = "/getUserImage/{id}")
    public void getUserImage(HttpServletResponse response, @PathVariable("id") String productId) throws IOException {

        response.setContentType("image/jpeg");
        byte[] buffer = productDao.getProductById(productId).getPic();
        InputStream in1 = new ByteArrayInputStream(buffer);
        IOUtils.copy(in1, response.getOutputStream());
    }

    @RequestMapping({"admin/deleteProduct/{id}"})
    public String deleteProduct(@PathVariable String id) {
        this.productDao.deleteProduct(id);
        return "redirect:/productList";
    }

    //    @RequestMapping("/addProduct")
//    public String addProduct(Model model) {
//        Product product = new Product();
//        product.setProductCategory("instrument");
//        product.setProductCondition("new");
//        product.setProductStatus("active");
//
//        model.addAttribute("product", product);
//
//        return "/addProduct";
//    }
//
    @RequestMapping(value = "/addProduct", method = RequestMethod.POST)
    // @RequestParam("file") MultipartFile file
    public String addProduct(@Valid @ModelAttribute("product") Product product, BindingResult result, @RequestParam("fileUpload") MultipartFile file) throws IOException {
        if (result.hasErrors()) {

            return "addProduct";
        }


        byte[] bytes = null;
        try {
            bytes = file.getBytes();
        } catch (IOException e) {

            e.printStackTrace();
        }
        product.setPic(bytes);
        productDao.addProduct(product);
        return "redirect:/productList";
    }

    @Controller
    public class HTTPErrorHandler {

        String path = "/error";

        @RequestMapping(value = "/404")
        public String error404() {

            return "404";
        }
    }


}
package com.afdempcomp.account.web;


import com.afdempcomp.account.dao.ProductDao;
import com.afdempcomp.account.model.Product;
import com.afdempcomp.account.model.User;
import com.afdempcomp.account.service.SecurityService;
import com.afdempcomp.account.service.UserService;
import com.afdempcomp.account.validator.UserValidator;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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
    public String addProduct(Model model, HttpServletRequest request) {


        if (request.isUserInRole("ROLE_ADMINISTRATOR")) {
            model.addAttribute("product", new Product());

            return "addProduct";
        }

        if (request.isUserInRole("ROLE_MEMBER")) {
            model.addAttribute("product", new Product());

            return "addProduct";
        } else {
            return "/login";

        }

    }

    @RequestMapping("/editProduct/{id}")
    public String editProduct(@PathVariable String id, Model model) {
        Product product = productDao.getProductById(id);
        model.addAttribute(product);

        return "editProduct";
    }





    @RequestMapping(value = "admin/setProductLive/{id}", method = {RequestMethod.POST, RequestMethod.GET})
    public String setProductLive(@PathVariable String id, Model model) {


        Product product = productDao.getProductById(id);

        product.setProductStatus("Live");
        productDao.setProductLive(product);

        return "redirect:" + "/admin/productInventory";


    }


    @RequestMapping(value = "admin/setProductInactive/{id}", method = {RequestMethod.POST, RequestMethod.GET})
    public String setProductInactive(@PathVariable String id, Model model) {


        Product product = productDao.getProductById(id);
        product.setProductStatus("Inactive");
        productDao.setProductLive(product);

        return "redirect:" + "/admin/productInventory";


    }

    @RequestMapping(value = "/loginpage")
    public String loginpage(Model model) {


        return "loginPage";
    }

    @RequestMapping("/productlist")
    public String productInventory(Model model) {
        List<Product> products = productDao.getActiveProducts();
        model.addAttribute("products", products);

        return "productList";
    }

    @RequestMapping("/admin/productInventory")
    public String ProductPanel(Model model) {
        List<Product> products = productDao.getAllProducts();
        model.addAttribute("products", products);

        return "ProductPanel";
    }


    @RequestMapping("/admin/adminPanel")
    public String adminPanel(Model model) {
        List<Product> products = productDao.getAllProducts();
        model.addAttribute("products", products);

        return "adminpanel";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model, @RequestParam("accountType") String accountType) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration";
        }

        if (accountType.equals("Member")) {
            userService.saveAsMember(userForm);
        }

        if (accountType.equals("User")) {

            userService.saveAsUser(userForm);
        }

        securityService.autologin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "/";
    }

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

        List<Product> products = productDao.getActiveProducts();
        model.addAttribute("products", products);
        return "home";
    }


    @RequestMapping("/viewProduct/{productId}")
    public String viewProduct(@PathVariable String productId, Model model) throws IOException {
        Product product = productDao.getProductById(productId);
        model.addAttribute(product);


        return "/viewproduct";
    }

    @RequestMapping(value = "profile")
    public String profiler(HttpSession session, HttpServletRequest request, Model model) {


        if (request.isUserInRole("ROLE_ADMINISTRATOR")) {
            return "adminpanel";
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

    @RequestMapping("/deleteProduct/{id}")
    public String deleteProduct(@PathVariable String id, HttpServletRequest request) {



        if (request.isUserInRole("ROLE_ADMINISTRATOR")  ) {

            this.productDao.deleteProduct(id);
            return "redirect:/admin/productInventory";
        }

        if ( request.isUserInRole("ROLE_ADMINISTRATOR")) {
            this.productDao.deleteProduct(id);
        return "/profile";
        }

        else {

            return  "/403";
        }



    }

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

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName();
        product.setProductManufacturer(name);
        product.setPic(bytes);
        product.setProductStatus("Inactive");

        productDao.addProduct(product);

        return "redirect:/productList";
    }

    @RequestMapping(value = "/editProduct", method = RequestMethod.POST)
    public String editProduct(@ModelAttribute("product") Product product,  Model model,HttpServletRequest request,@RequestParam("fileUpload") MultipartFile file) throws IOException  {
        byte[] bytes = null;
        try {
            bytes = file.getBytes();
        } catch (IOException e) {

            e.printStackTrace();
        }

            product.setPic(bytes);
            


        if (request.isUserInRole("ROLE_ADMINISTRATOR")  ) {
            this.productDao.editProduct(product);
            return "redirect:/admin/productInventory";
        }

        if ( request.isUserInRole("ROLE_ADMINISTRATOR")) {
            productDao.editProduct(product);
            return "/profile";
        }

        else {

            return  "/403";
        }




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
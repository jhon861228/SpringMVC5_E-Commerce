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
import javax.servlet.http.HttpServletResponse;

import javax.transaction.Transactional;
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

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }


    @RequestMapping(value = {"/", "/welcome"}, method = RequestMethod.GET)
    public String welcome(Model model) {

        return "home";
    }
    @Transactional
    @RequestMapping(value="/store")
     public String home(Model model) {

        List<Product> products = productDao.getAllProducts();
        model.addAttribute("products", products);
        return "home";
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





}
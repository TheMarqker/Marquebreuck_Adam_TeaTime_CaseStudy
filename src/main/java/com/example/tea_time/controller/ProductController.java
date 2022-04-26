package com.example.tea_time.controller;

import com.example.tea_time.database.dao.ProductDAO;
import com.example.tea_time.database.entity.Product;
import com.example.tea_time.formbean.ProductFormBean;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@Slf4j
@Controller
public class ProductController {

    @Autowired
    private ProductDAO productDao;

    @RequestMapping(value = "/products", method = RequestMethod.GET)
    public ModelAndView Product() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("products");

        List<Product> products = productDao.findAll();

        Comparator<Product> compareByName = (Product p1, Product p2) -> p1.getName().compareTo(p2.getName());
        Collections.sort(products, compareByName);

        response.addObject("products", products);

        return response;
    }

    @RequestMapping(value = "/checkout", method = RequestMethod.GET)
    public ModelAndView Shop() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("checkout");

        List<Product> products = productDao.findAll();

        response.addObject("products", products);

        return response;
    }

    @RequestMapping(value = "/admin/productSubmit", method = RequestMethod.GET)
    public ModelAndView submit(@Valid ProductFormBean tea, BindingResult bindingResult) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("redirect:/admin");

        log.debug(tea.toString());

        if (bindingResult.hasErrors()) {
            // this is the error case
            for (FieldError error : bindingResult.getFieldErrors()) {
                log.debug(error.toString());
            }

            // add the errors to the model to be displayed on the page
            response.addObject("bindingResult", bindingResult);

            // add the formbean back to the model
            // fill the form with the user input
            response.addObject("tea", tea);
        } else {

            //  write the product to the database

            Product product = new Product();

            product.setName(tea.getProductName());
            product.setDescription(tea.getDescription());
            product.setPrice(tea.getPrice());
            product.setImageUrl(tea.getImageURL());

            productDao.save(product);

        }

        return response;
    }

    @RequestMapping(value = "/showAll", method = RequestMethod.GET)
    public ModelAndView showAll() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("admin");

        List<Product> productsKey = productDao.findAll();
        Comparator<Product> compareByName = (Product p1, Product p2) -> p1.getName().compareTo(p2.getName());
        Collections.sort(productsKey, compareByName);

        response.addObject("productsKey", productsKey);
        return response;
    }
}
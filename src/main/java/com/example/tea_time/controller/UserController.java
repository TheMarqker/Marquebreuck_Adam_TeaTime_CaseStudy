package com.example.tea_time.controller;

import com.example.tea_time.database.dao.UserDAO;
import com.example.tea_time.database.dao.UserRoleDAO;
import com.example.tea_time.database.entity.User;
import com.example.tea_time.database.entity.UserRole;
import com.example.tea_time.formbean.RegisterFormBean;
import com.example.tea_time.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Slf4j
@Controller
public class UserController {

    @Autowired
    private UserDAO userDao;

    @Autowired
    private UserRoleDAO userRoleDao;

    @Autowired
    private UserService userService;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @RequestMapping(value = "/user/register", method = RequestMethod.GET)
    public ModelAndView create() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("/user/register");

        RegisterFormBean form = new RegisterFormBean();
        response.addObject("form", form);

        return response;
    }


    @RequestMapping(value = "/user/registerSubmit", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView registerSubmit(@Valid RegisterFormBean form, BindingResult bindingResult) throws Exception {
        ModelAndView response = new ModelAndView();

        log.info(form.toString());

        if (bindingResult.hasErrors()) {

            for (ObjectError error : bindingResult.getAllErrors()) {
                log.info(((FieldError) error).getField() + " " + error.getDefaultMessage());
            }
            response.addObject("form", form);


            response.addObject("bindingResult", bindingResult);

            response.setViewName("user/register");
            return response;
        }


        User user = userDao.findById(form.getId());


        if (user == null) {

            user = new User();
        }

        user.setEmail(form.getEmail());
        user.setFirstName(form.getFirstName());
        user.setLastName(form.getLastName());
        user.setCreateDate(new Date());

        String password = passwordEncoder.encode(form.getPassword());
        user.setPassword(password);

        userDao.save(user);


        UserRole userRole = new UserRole();
        userRole.setUserId(user.getId());
        userRole.setUserRole("USER");

        userRoleDao.save(userRole);

        log.info(form.toString());

        response.setViewName("redirect:/user/edit/" + user.getId());

        return response;
    }


    @GetMapping("/user/edit/{userId}")
    public ModelAndView editUser(@PathVariable("userId") Integer userId) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("user/register");

        User user = userDao.findById(userId);

        RegisterFormBean form = new RegisterFormBean();

        form.setId(user.getId());
        form.setEmail(user.getEmail());
        form.setFirstName(user.getFirstName());
        form.setLastName(user.getLastName());
        form.setPassword(user.getPassword());
        form.setConfirmPassword(user.getPassword());

        response.addObject("form", form);

        return response;
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public ModelAndView search(@RequestParam(value = "firstName", required = false) String firstName) {
        ModelAndView response = new ModelAndView();
        response.setViewName("user/admin");

        List<User> user = new ArrayList<>();

        // very basic example of error checking
        if (!StringUtils.isEmpty(firstName)) {
            user = userDao.findByFirstNameIgnoreCaseContaining(firstName);
        }

        response.addObject("usersModelKey", user);
        response.addObject("firstName", firstName);

        return response;
    }

    @RequestMapping(value = "/profile/{email}", method = RequestMethod.GET)
    public ModelAndView profile(@PathVariable("email") String email) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("user/profile");

        RegisterFormBean form = new RegisterFormBean();

        //have their username
        //query Users from mysql where username = username

        User user = userDao.findByEmail(email);

        response.addObject("firstName", user.getFirstName());
        response.addObject("lastName", user.getLastName());
        response.addObject("address", user.getAddress());
        response.addObject("city", user.getCity());
        response.addObject("state", user.getState());
        response.addObject("zip", user.getZip());
        response.addObject("phone", user.getPhone());

        return response;
    }

    @RequestMapping(value = "/profile/address", method = RequestMethod.GET)
    public ModelAndView editAddress(@PathVariable("edit") String edit) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("user/address");

        RegisterFormBean form = new RegisterFormBean();

        return response;
    }

    @GetMapping("/user/delete/{userId}")
    public ModelAndView deleteUser(@PathVariable("userId") Integer userId) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("user/admin");

        User user = userDao.findById(userId);
        if (user == null) {
            // Error message
        } else {
            userDao.delete(user);
        }
        return response;
    }
}
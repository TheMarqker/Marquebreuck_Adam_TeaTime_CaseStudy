package com.example.tea_time.service;

import com.example.tea_time.database.dao.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserService {

    @Autowired
    private UserDAO userDao;


}

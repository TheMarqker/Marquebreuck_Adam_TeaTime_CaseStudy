package com.example.tea_time;

import com.example.tea_time.database.dao.ProductDAO;
import com.example.tea_time.database.dao.UserDAO;
import com.example.tea_time.database.dao.UserRoleDAO;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;


import static org.assertj.core.api.AssertionsForInterfaceTypes.assertThat;


@SpringBootTest
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
class TeaTimeApplicationTests<findByUserId> {

   @Autowired
    UserDAO userDAO;

    @Autowired
    ProductDAO productDAO;

    @Autowired
    UserRoleDAO userRoleDAO;

    @Test
    @Order(1)
    void testUserDAO() {
        long count = userDAO.count();

        assertThat(count).isGreaterThan(0);
    }

    @Test
    @Order(2)
    void testProductDAO() {
        long count = productDAO.count();

        assertThat(count).isGreaterThan(7);
    }

    @Test
    @Order(3)
    void contextLoads() {
    }

}

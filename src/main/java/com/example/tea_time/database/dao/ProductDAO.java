package com.example.tea_time.database.dao;

import com.example.tea_time.database.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductDAO extends JpaRepository<Product, Long> {

    public Product findById(@Param("id") Integer id);

    public Product findByName(@Param("productName") String productName);

}
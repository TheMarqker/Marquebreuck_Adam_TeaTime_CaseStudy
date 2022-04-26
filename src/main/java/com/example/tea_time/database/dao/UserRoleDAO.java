package com.example.tea_time.database.dao;

import com.example.tea_time.database.entity.Product;
import com.example.tea_time.database.entity.UserRole;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRoleDAO extends JpaRepository<UserRole, Long> {

    List<UserRole> findByUserId(@Param("userId") Integer userId);

    public UserRole findByUserRole(@Param("UserRole") String UserRole);
}
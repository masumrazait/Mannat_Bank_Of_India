package com.mannatbank.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mannatbank.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}

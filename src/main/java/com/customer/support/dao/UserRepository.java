package com.customer.support.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.customer.support.model.User;

public interface UserRepository extends JpaRepository<User, String> {
	
	User findByEmail(String email);
}

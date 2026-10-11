package com.example.demo2.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo2.Entity.User;
@Repository
public interface UserRepository extends JpaRepository<User, Long> {
	
	
	Optional<User> findByEmailIgnoreCase(String email);

}

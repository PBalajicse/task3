package com.example.demo2.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo2.Entity.Skills;
@Repository
public interface SkillRepository extends JpaRepository<Skills, Long> {
	
	Optional<Skills> findByNameIgnoreCase(String name);

}

package com.example.demo2.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo2.Entity.Job_Role;
@Repository
public interface JobRoleRepository extends JpaRepository<Job_Role, Long>{
	

}

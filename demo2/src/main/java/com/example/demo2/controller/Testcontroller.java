package com.example.demo2.controller;

import java.awt.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo2.Entity.Skills;
import com.example.demo2.repository.SkillRepository;
@RestController
@RequestMapping("/api/test")
public class Testcontroller {
	
	private final SkillRepository repo;
	 public Testcontroller (SkillRepository repo) { this.repo = repo; }
	 @GetMapping("/skills")
	 public java.util.List<Skills> skills()
	 { 
		 return repo.findAll();
		 
	 }

}

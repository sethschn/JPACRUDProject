package com.skilldistillery.jpacrud.data;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.skilldistillery.jpacrud.entities.Giraffe;

public interface GiraffeDAO extends CrudRepository<Giraffe, Integer>{
	
	//Giraffe findById(int id);
	//List<Giraffe> findAll();

}

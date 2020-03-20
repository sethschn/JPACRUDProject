package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Giraffe;

public interface GiraffeDAO {
	
	Giraffe findById(int id);
	List<Giraffe> findAll();

}

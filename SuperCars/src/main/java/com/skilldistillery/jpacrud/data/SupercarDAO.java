package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Supercar;

public interface SupercarDAO {
	
	Supercar findById(int id);
	List<Supercar> findAll();
	boolean destroy(int id);
	Supercar create(Supercar supercar);
	Supercar update(int id, Supercar supercar);

}

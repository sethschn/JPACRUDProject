package com.skilldistillery.jpacrud.data;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Giraffe;

@Service
@Transactional
public class GiraffeDAOJpaImpl {
	
	@PersistenceContext
	EntityManager em;
	
	@Autowired GiraffeDAO dao;

	public void save(Giraffe giraffe) {
		dao.save(giraffe);
	}

	public Optional<Giraffe> findById(Integer id) {
		return dao.findById(id);
	}

	public boolean existsById(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<Giraffe> findAll() {
		return (List<Giraffe>) dao.findAll();
	}

	public void deleteById(Integer id) {
		dao.deleteById(id);
		
	}

//	@Override
//	public Giraffe findById(int id) {
//		
//		return em.find(Giraffe.class, id);
//	}
//
//	@Override
//	public List<Giraffe> findAll() {
//		String jpql = "SELECT g FROM Giraffe g";
//		return em.createQuery(jpql, Giraffe.class).getResultList();
//	
//	}

}

package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Giraffe;

@Service
@Transactional
public class GiraffeDAOJpaImpl implements GiraffeDAO {
	
	@PersistenceContext
	EntityManager em;

	@Override
	public Giraffe findById(int id) {
		
		return em.find(Giraffe.class, id);
	}

	@Override
	public List<Giraffe> findAll() {
		String jpql = "SELECT g FROM Giraffe g";
		return em.createQuery(jpql, Giraffe.class).getResultList();
	
	}

}

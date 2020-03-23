package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Supercar;

@Service
@Transactional
public class SupercarDAOImpl implements SupercarDAO {
	
	@PersistenceContext
	EntityManager em;
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("SupercarPU");

	
	//@Autowired SupercarDAO dao;


	@Override
	public Supercar findById(int id) {
		
		return em.find(Supercar.class, id);
	}

	@Override
	public List<Supercar> findAll() {
		String jpql = "SELECT g FROM Supercar g";
		return em.createQuery(jpql, Supercar.class).getResultList();
	
	}
	
	@Override
	public boolean destroy(int id) {
		EntityManager em = emf.createEntityManager();
		Supercar supercar = em.find(Supercar.class, id);
		if (supercar == null) {
			return false;
		}
		em.getTransaction().begin();

		em.remove(supercar); // performs the delete on the managed entity
		em.flush();
		
		em.getTransaction().commit();
		
		boolean removedWorked = !em.contains(supercar);
		
		em.close();
		return removedWorked;
	}
	
	@Override
	public Supercar create(Supercar supercar) {
		EntityManager em = emf.createEntityManager();
		System.out.println("DAO, before persist " + supercar);
		// start the transaction
		em.getTransaction().begin();
		//Actor managed = em.find(Actor.class, id);

		// write the actor to the database
		em.persist(supercar);

		// update the "local" actor object
		em.flush();

		// commit the changes (actually perform the operation)
		em.getTransaction().commit();

		em.close();

		// return the actor object
		return supercar;
	}
	
	@Override
	public Supercar update(int id, Supercar supercar) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Supercar managed = em.find(Supercar.class, id);
		managed.setName(supercar.getName());
		managed.setEngine(supercar.getEngine());
		managed.setHorsepower(supercar.getHorsepower());;
		managed.setModelYear(supercar.getModelYear());
		managed.setTopSpeed(supercar.getTopSpeed());
		
		em.flush();
		// open a transaction

		em.getTransaction().commit();

		em.close();

		return managed;
	}

}

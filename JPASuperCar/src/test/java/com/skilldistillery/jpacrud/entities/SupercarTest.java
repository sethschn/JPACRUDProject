package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class SupercarTest {
	
	private static EntityManagerFactory emf; 
	private EntityManager em;
	private Supercar supercar;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("SupercarPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		supercar = em.find(Supercar.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		supercar = null;
	}

	@Test
	void test() {
		assertNotNull(supercar);
		assertEquals("Hennessey Venom GT", supercar.getName());
		assertEquals(270.49, supercar.getTopSpeed());
		assertEquals(2012, supercar.getModelYear());
		assertEquals("7.0L LSX Twin Turbocharged V8", supercar.getEngine());
		assertEquals(1244, supercar.getHorsepower());
	}

}

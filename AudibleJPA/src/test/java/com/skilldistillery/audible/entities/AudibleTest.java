package com.skilldistillery.audible.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class AudibleTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	Audible audible;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("AudiblePu");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		audible = em.find(Audible.class, 1);
		
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		audible = null;
	}

	@Test
	@DisplayName("audible entity mapping")
	void test() {
		assertNotNull(audible);
		assertEquals("Can't Hurt Me: Master Your Mind and Defy the Odds", audible.getName());
	}

}

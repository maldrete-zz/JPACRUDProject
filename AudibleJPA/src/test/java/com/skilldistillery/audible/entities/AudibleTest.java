package com.skilldistillery.audible.entities;

import static org.junit.jupiter.api.Assertions.*;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
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
		audible = em.find(Audible.class, 2);

	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		audible = null;
	}

	@Disabled
	@Test
	@DisplayName("audible entity mapping")
	void test() {
		assertNotNull(audible);
		assertEquals("Can't Hurt Me: Master Your Mind and Defy the Odds", audible.getName());
	}

	@Test
	@DisplayName("audible entity mapping")
	void test2() {
		assertNotNull(audible);
		assertEquals("Born a Crime\n" + "Stories from a South African Childhood", audible.getName());
		assertEquals("Trevor Noah", audible.getAuthor());
		assertEquals("Trevor Noah", audible.getNarrator());
		assertEquals("08:44:00", audible.getLength().toString());
		assertEquals("2016-11-15", audible.getReleaseDate().toString());
		assertEquals(" Bios & Memoirs, Celebrities", audible.getCategories());
		// assertEquals("", audible.getDesciption());
		// assertEquals("", audible.getBookImage());
	}

}

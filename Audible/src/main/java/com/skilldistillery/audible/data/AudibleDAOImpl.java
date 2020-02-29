package com.skilldistillery.audible.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.audible.entities.Audible;

@Service
@Transactional
public class AudibleDAOImpl implements AudibleDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Audible findById(int id) {
		Audible audible = em.find(Audible.class, id);
		return audible;
	}

	@Override
	public List<Audible> findAll() {
		String jpql = "SELECT a FROM Audible a";
		List<Audible> allAudibles = em.createQuery(jpql, Audible.class).getResultList();
		for (Audible audible : allAudibles) {
			System.out.println("Hello im in here");
			System.out.println(audible);
		}
		return allAudibles;
	}

	@Override
	public Audible create(Audible audible) {
		em.persist(audible);
		em.flush();
		System.out.println(audible);
		return audible;
	}

	@Override
	public Audible update(int id, Audible audible) {
		Audible managedAudible = em.find(Audible.class, id);
		managedAudible.setAuthor(audible.getAuthor());
		managedAudible.setName(audible.getName());
		managedAudible.setLength(audible.getLength());
		managedAudible.setNarrator(audible.getNarrator());
		managedAudible.setReleaseDate(audible.getReleaseDate());
		managedAudible.setCategories(audible.getCategories());
		managedAudible.setDescription(audible.getDescription());
		em.flush();
		return audible;
	}

	@Override
	public Audible delete(int id) {
		Audible audible = em.find(Audible.class, id);
		em.remove(audible);
	
		return null;
	}
	
	
	

//	public static void main(String[] args) {
//		AudibleDAOImpl dao = new AudibleDAOImpl();
//		dao.findAll();
//	}

}

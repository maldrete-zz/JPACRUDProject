package com.skilldistillery.audible.data;

import java.util.List;

import com.skilldistillery.audible.entities.Audible;

public interface AudibleDAO {
	
	public Audible findById(int id);
	public List<Audible> findAll();
	public Audible create(Audible audible); 
	public Audible update(int id, Audible audible);
	public Audible delete(int id);
	

}

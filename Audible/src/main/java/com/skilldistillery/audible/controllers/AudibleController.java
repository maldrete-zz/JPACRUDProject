package com.skilldistillery.audible.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.audible.data.AudibleDAO;
import com.skilldistillery.audible.entities.Audible;

@Controller
public class AudibleController {
	
	@Autowired
	private AudibleDAO dao;
	
	
	@RequestMapping(path = {"/", "home.do"}, method = RequestMethod.GET )
	public String home(Model model) {
		model.addAttribute("audibles", dao.findAll());
		System.out.println(dao.findAll());
		return "home";
	}
	
	@RequestMapping(path = "displayAll.do", method = RequestMethod.POST)
	public String index(Model model) {
		model.addAttribute("audibles", dao.findAll());
		return "home";
		// return "index"; // if using a ViewResolver.
	}
	
	@RequestMapping(path = "gettocreate.do", method = RequestMethod.GET)
	public String createPage() {
		return "create";
	}
	
	@RequestMapping(path = "createAudible.do", method = RequestMethod.GET)
	public String create(Audible audible) {
		dao.create(audible);
		return "result";
	}
	
	@RequestMapping(path="gettoupdateId.do", method = RequestMethod.GET)
	public String updatepath() {
		return "updateGetId";
	}
	
	@RequestMapping(path ="getId.do", method = RequestMethod.GET)
	public String updateGrabID(Integer id, Model model) {
		model.addAttribute(dao.findById(id));
		return "update";
	}
	
	@RequestMapping(path="update.do", method = RequestMethod.POST)
	public String updateAudibleForm(Model model, Audible audible) {
		audible = dao.update(audible.getId(),audible);
		return "result";
	}
	
	@RequestMapping(path ="getToDeleteId.do", method = RequestMethod.GET)
	public String deleteGrabID() {
		return "deleteGetId";
	}
	
	@RequestMapping(path ="delete.do", method = RequestMethod.GET)
	public String deleteAudibleForm(Integer id) {
		dao.delete(id);
		return "delete";
	}
	
	
	
	
//	@RequestMapping(path = "")
//	public String showFilm(@RequestParam Integer fid, Model model) {
//		Audible audible = null;
//		film = dao.findById(fid);
//		model.addAttribute("film", film);
//		return "WEB-INF/film/show.jsp";
//	}

}

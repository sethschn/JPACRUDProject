package com.skilldistillery.jpacrud.controlllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpacrud.data.GiraffeDAO;

@Controller
public class GiraffeController {
	
	@Autowired
	private GiraffeDAO dao;
	
	@RequestMapping(path= {"/","home.do"})
	public String index(Model model) {
		model.addAttribute("giraffe", dao.findAll());
		return "index";
	}

}

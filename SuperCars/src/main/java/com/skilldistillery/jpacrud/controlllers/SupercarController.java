package com.skilldistillery.jpacrud.controlllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpacrud.data.SupercarDAO;
import com.skilldistillery.jpacrud.entities.Supercar;

@Controller
public class SupercarController {
	
	@Autowired
	private SupercarDAO dao;
	
	@RequestMapping(path= {"/","home.do"})
	public String index(Model model) {
		model.addAttribute("supercar", dao.findAll());
		return "index";
	}
	@RequestMapping(path="/admin")
	public String admin(Model model) {
		model.addAttribute("supercar", dao.findAll());
		return "admin";
	}
	
	@RequestMapping(path="getSupercar.do",method=RequestMethod.GET, params="supercarid")
	public String showSupercar(@RequestParam Integer supercarid, Model model) {
		
		Supercar supercarObj = dao.findById(supercarid);
		model.addAttribute("supercar",supercarObj);
		return "show";
	}
	
	@RequestMapping("/new")
	public String newSupercarForm(Model model) {
	    Supercar supercar = new Supercar();
	    model.addAttribute("supercar", supercar);
	    return "new_supercar";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveSupercar(@ModelAttribute("supercar") Supercar supercar) {
	    dao.create(supercar);
	    return "redirect:/";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateSupercar(@ModelAttribute("supercar") Supercar supercar) {
	    dao.update(supercar.getId(), supercar);
	    return "redirect:/";
	}
	
	@RequestMapping("/edit")
	public ModelAndView editSupercarForm(@RequestParam int id) {
	    ModelAndView mav = new ModelAndView("edit_supercar");
	    Supercar supercar = dao.findById(id);
	    mav.addObject("supercar", supercar);
	 
	    return mav;
	}
	
	@RequestMapping("/delete")
	public String deleteSupercarForm(@RequestParam int id) {
	    dao.destroy(id);
	    return "redirect:/";       
	}

}

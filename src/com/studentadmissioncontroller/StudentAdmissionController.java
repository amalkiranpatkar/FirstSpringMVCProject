package com.studentadmissioncontroller;

import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StudentAdmissionController {
	@InitBinder
	public void initBinder(WebDataBinder binder){
		binder.setDisallowedFields(new String[]{"studentMobile"});
	}
	
	@RequestMapping(value="/admissionform.html", method= RequestMethod.GET)
	public ModelAndView getAdmissionForm() {
		ModelAndView modelAndView = new ModelAndView("AdmissionForm");
		return modelAndView;
	}
	@ModelAttribute
	public void addingCommonObjects(Model model){
		model.addAttribute("headerMessage", "Common Attribute Student admission project");
	}
	
	@RequestMapping(value="/submitAdmissionForm.html", method= RequestMethod.POST)
	public ModelAndView submitAdmissionForm(@Valid @ModelAttribute ("student1")  Student student,BindingResult result) {
		if(result.hasErrors()){
			
			ModelAndView modelAndView = new ModelAndView("AdmissionForm", result.getModel());
			return modelAndView;
		}
		ModelAndView modelAndView = new ModelAndView("AdmissionSuccess");
		
		return modelAndView;
	}
}

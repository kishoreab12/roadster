package com.roadster.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.roadster.config.Preferences;

@Controller
public class PreferencesController {
	@Autowired
	private Preferences preferences;
        
	
	@GetMapping("/preferences")
	public String showPreferences(ModelMap modelMap) {
        System.out.println("Inside PreferencesController");		
	modelMap.addAttribute("preferences",preferences);	
	 return "preferences";	
	}

}

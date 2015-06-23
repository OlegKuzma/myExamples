package com.gmail.kuzma.testSite.prizes;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// Handles requests for the application about page.

@Controller
public class PrizesController {

	@RequestMapping(value = "/prizes", method = RequestMethod.GET)
	public String about(Model model) {
		return "prizes";
	}

}
package com.game.team1.controller.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ViewsController {

	@RequestMapping(value="/views/**", method=RequestMethod.GET)
	public void page() {
		
	}
}

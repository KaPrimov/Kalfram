package controllers;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
@Controller
public class HomeController 
{
	
	@RequestMapping(value="/home",method = RequestMethod.GET)
	public String getHomeMapping(Model model)
	{
		model.addAttribute("message", "Welcome to Spring MVC");
		return "home/home";
	}
	
	@RequestMapping(value="/home*",method = RequestMethod.POST)
	public String postHomeMapping(Model model)
	{
		System.out.println("here");
		System.out.println(model);
		return "home/home";
	}
}
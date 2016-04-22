package be.italent.controllers;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/hello")
public class HelloRest {
	@RequestMapping(method=RequestMethod.GET, produces="text/plain")
	public String handleGet(){
		return "Hello World!!";
	}
}
package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import service.UserService;

@Controller
@RequestMapping("/")
public class UserController {
	@Autowired
	public UserService userService;
	
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/nextPage")
	public String nextPage() {
		return "nextPage";
	}
	@GetMapping("/users")
	public String getAllUsers(Model model) {
		model.addAttribute("users",userService.getAll());
		return "usersList";
	}
}

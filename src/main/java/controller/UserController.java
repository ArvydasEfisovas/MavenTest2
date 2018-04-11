package controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.Book;
import service.UserService;

@Controller
@RequestMapping("/")
public class UserController {
	@Autowired
	public UserService userService;
	
	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("books",userService.getAll());
		 
		return "index";
	}
	
	
	@GetMapping("/book/{id}")
	public String getById(@PathVariable("id") int id,Model model) {
		model.addAttribute("book",userService.getById(id));
		return "showBook";
	}
	@PostMapping("/addBook")
		public String addUser(@Valid Book book,BindingResult bindingResult,Model model) {
		if(!bindingResult.hasErrors()) {
			model.addAttribute("favoriteFrameworks", book.getFavoriteFrameworks());
			model.addAttribute("noErrors",true);
			userService.save(book);
		}
		
			return "createBook";
	}
	@GetMapping("/addBook")
		public String createUserPage(Model model) {
		model.addAttribute("book",new Book());
		
			return "createBook";
	}
	@GetMapping("/update/{id}")
		public String update(@PathVariable("id") int id, Model model) {
			model.addAttribute("book",userService.getById(id));
			return "editBook";
	}
	@PostMapping("/updateBook")
		public String updateUser(@ModelAttribute("book") Book book) {
			userService.update(book);
			return "redirect:/book/" + book.getId();
	}
	@GetMapping("/delete/{id}")
		public String delete (@PathVariable("id") int id) {
			userService.delete(id);
			return "redirect:/";
	}
	 @ModelAttribute("webFrameworkList")
	   public List<String> getWebFrameworkList() {
	      List<String> webFrameworkList = new ArrayList<String>();
	      webFrameworkList.add("Documentary");
	      webFrameworkList.add("Romance");
	      webFrameworkList.add("Action");
	      webFrameworkList.add("History");
	      return webFrameworkList;
	   }
	
}

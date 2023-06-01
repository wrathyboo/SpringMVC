package controllers;

import java.util.List;
import javax.validation.Valid;

//import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.UserDAO;
import entities.UserDto;


@Controller
public class UserAuthentication {
    @Autowired
    UserDAO userDAO;
	
	@RequestMapping("authorize")
	public String Authorize() {
		return null;
		
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(@RequestParam(value = "error", required = false) String error, Model model) {
		if (error != null) {
			model.addAttribute("mess", "Login failed!");
		}
		return "login";
	}
    
    @RequestMapping("register")
    public String registerPage() {
    	return "register";
    }
    
    @RequestMapping("createAccount")
    public String createAccount(@ModelAttribute("user") @Valid UserDto userDto, BindingResult result, Model model) {
    	if(result.hasErrors()) {	
    		List<FieldError> errors = result.getFieldErrors();
    	    for (FieldError error : errors ) {
    	        System.out.println (error.getObjectName() + " - " + error.getDefaultMessage());
    	    }
			return "register";
		}else {
			if(userDAO.userCreate(userDto)) {
				return "redirect:login";
			}else {
				model.addAttribute("err", "Insert failed!");
				model.addAttribute("s", userDto);
				return "register";
			}
		}
		
    }
    
    @RequestMapping("/logout")
	public String logout(Model model) {
		model.addAttribute("mess", "Has Logged out!!!");
		return "redirect:home";
	}
}
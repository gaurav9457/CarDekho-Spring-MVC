package com.jspiders.carDekhoSpring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jspiders.carDekhoSpring.pojo.AdminPOJO;
import com.jspiders.carDekhoSpring.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	private AdminService service;
	
	@GetMapping("/createAccount")
	public String createAccountPage(ModelMap map) {
		AdminPOJO pojo=service.getAdmin();
		
		if (pojo != null) {
			map.addAttribute("msg","Account already exists!!!");
			return "Login";
		}
		return "CreateAccount";
		
	}
	
	@PostMapping("/createAccount")
	public String createAccount(@RequestParam String username,
                                @RequestParam String password,
                                 ModelMap map) {
            AdminPOJO pojo = service.createAccount(username, password);

                    //Success flow
              if (pojo != null) {
                   map.addAttribute("msg", "Account created successfully..!");
                      return "Login";
                }

                 //Failure flow
             map.addAttribute("msg", "Account not created..!");
               return "Login";


           }
	
	@PostMapping("/login")
	public String login(@RequestParam String username,
			@RequestParam String password,
			ModelMap map,HttpSession session ) {

                 AdminPOJO pojo = service.login(username, password);

              //Success flow

                 if (pojo != null) {
                    session.setAttribute("login", pojo);
                  session.setMaxInactiveInterval(100);
                     return "Home";
                     }

             //Failure Flow

                map.addAttribute("msg", "Invalid username or password!!!!!");

                  return "Login";
              }
	
	@GetMapping("/logout")
    public String logout(ModelMap map,HttpSession session) {
	
	          session.invalidate();
	
	         map.addAttribute("msg", "Logged out successfully!!!");
	
	        return "Login";
}

}

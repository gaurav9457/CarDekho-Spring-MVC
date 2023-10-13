package com.jspiders.carDekhoSpring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.jspiders.carDekhoSpring.pojo.AdminPOJO;
import com.jspiders.carDekhoSpring.pojo.CarPOJO;
import com.jspiders.carDekhoSpring.service.CarService;


@Controller
public class CarController {
	@Autowired
	private CarService service;
	
	@GetMapping("/add")
	public String add(ModelMap map) {
		List<CarPOJO> cars = service.findAllCars();
		map.addAttribute("cars",cars);
		return "Add";
		
	}
	
	@PostMapping("/add")
	public String addCar(@RequestParam  String name,
            @RequestParam String brand,
            @RequestParam String fueltype,
            @RequestParam long price,
           ModelMap map) {
		//success
		CarPOJO pojo=service.addcar(name,brand,fueltype,price);
		if (pojo != null) {
			map.addAttribute("msg","Car Data inserted successfully!!!");
			
			List<CarPOJO> cars = service.findAllCars();
			map.addAttribute("cars",cars);
			return "Add";
			
		}
		map.addAttribute("msg","Car Data not inserted..!");
		List<CarPOJO> cars = service.findAllCars();
		if (!cars.isEmpty()) {
			map.addAttribute("cars", cars);
		}
		return "Add";
		
	}
	
	@GetMapping("/home")
	public String home(@SessionAttribute(name="login",required = false)AdminPOJO admin,ModelMap map) {
		if (admin != null) {
			return "Home";
		}
		map.addAttribute("msg", "Session inactive. Login to proceed..!");
		return "Login";
	}
	
	@GetMapping("/update")
	public String update(ModelMap map) {
		List<CarPOJO> cars = service.findAllCars();
		map.addAttribute("cars", cars);
		return "Update";
		
	}
	
	 // Update form 
		@PostMapping("/update")
		public String update(@RequestParam int id,
				               ModelMap map) {
			CarPOJO pojo = service.searchCar(id);
			
			//Success Flow
			if (pojo != null) {
				map.addAttribute("car",pojo);
				return "Update";
			}
			//Failure Flow
			
			List<CarPOJO> cars = service.findAllCars();
			map.addAttribute("cars", cars);
			map.addAttribute("msg", "Car data not found..!");
			return "Update";
			
		}
		
		@PostMapping("/updateCar")
		public String updateCar(@RequestParam int id,
				                @RequestParam String name,
				                @RequestParam String brand,
				                @RequestParam String fueltype,
				                @RequestParam long price,
				                ModelMap map) {
			CarPOJO pojo=service.updateCar(id,name,brand,fueltype,price);
			
			//Success Flow
			if(pojo != null) {
				List<CarPOJO> cars=service.findAllCars();
				map.addAttribute("msg", "Car Data updated successfully");
				map.addAttribute("cars", cars);
				return "Update";
				}
			//Failure Flow
			List<CarPOJO> cars=service.findAllCars();
			map.addAttribute("msg","car data not updated");
			map.addAttribute("cars", cars);
			return "Update";
			
		}
	
	@GetMapping("/remove")
	public String remove(ModelMap map) {
		
		List<CarPOJO> cars = service.findAllCars();
		if (cars != null) {
			map.addAttribute("cars", cars);
			return "Remove";
		}
		map.addAttribute("msg", "No Data Persent");
		return "Remove";
	}
	
	@PostMapping("/remove")
	public String removeCar(@RequestParam int id,
			                ModelMap map) {
		CarPOJO pojo=service.removeCar(id);
		List<CarPOJO> cars = service.findAllCars();
		//Success flow
		if (pojo != null) {
			map.addAttribute("msg", "Car Data removed successfully..!");
			map.addAttribute("cars", cars);
			return "Remove";
		}
		//Failure flow
		map.addAttribute("msg", "Car Data does not exist..!");
		map.addAttribute("cars", cars);
		return "Remove";
		
	}
	
	
	@GetMapping("/login")
	public String login() {
		return "Login";
	}
	@GetMapping("/search")
	public String search() {
		return "Search";
	}
	
	@PostMapping("/search")
	public String searchCar(@RequestParam int id,
			                ModelMap map) {
		CarPOJO pojo=service.searchCar(id);
		if (pojo != null) {
			map.addAttribute("car",pojo);
			map.addAttribute("msg","Car  details found..!");
			return "Search";
		}
		       //Failure
		map.addAttribute("msg", "Car details not found..!");
		return "Search";
		
	}

}

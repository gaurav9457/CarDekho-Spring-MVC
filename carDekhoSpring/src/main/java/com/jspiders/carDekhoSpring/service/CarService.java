package com.jspiders.carDekhoSpring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jspiders.carDekhoSpring.pojo.CarPOJO;
import com.jspiders.carDekhoSpring.repository.CarRepository;

@Service
public class CarService {
	@Autowired
	private CarRepository repository;

	public CarPOJO addcar(String name, String brand, String fueltype, long price) {
		CarPOJO pojo=repository.addcar(name,brand,fueltype,price);
		return pojo;
	}

	public List<CarPOJO> findAllCars() {
		List<CarPOJO> cars=repository.findAllCars();
		return cars;
	}

	public CarPOJO searchCar(int id) {
		CarPOJO pojo=repository.searchCar(id);
		return pojo;
	}

	public CarPOJO updateCar(int id, String name, String brand, String fueltype, long price) {
		CarPOJO pojo=repository.updateCar(id,name,brand,fueltype,price);
		return pojo;
	}

	public CarPOJO removeCar(int id) {
		CarPOJO pojo=repository.removeCar(id);
		return pojo;
	}

	

	
	

}

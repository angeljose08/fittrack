package com.fittrack.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fittrack.entity.Meal;
import com.fittrack.repository.MealRepository;

@Service
public class MealService {
	@Autowired
	MealRepository mealRepository;
	
	public void saveMeal(Meal meal) {
		mealRepository.save(meal);
	}
	
	public List<Meal> getAllMeals(){
		return mealRepository.findAll();
	}
	
	public Meal getUserById(Long id) {
		return mealRepository.findById(id).orElse(null);
	}
	
}

package com.fittrack.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fittrack.entity.Workout;
import com.fittrack.repository.WorkoutRepository;

@Service
public class WorkoutService {
	@Autowired
	WorkoutRepository workoutRepository;
	
	public void saveWorkout(Workout workout) {
		workoutRepository.save(workout);
	}
	
	public List<Workout> getAllworkouts(){
		return workoutRepository.findAll();
	}
	
	public Workout getUserById(Long id) {
		return workoutRepository.findById(id).orElse(null);
	}
	
}

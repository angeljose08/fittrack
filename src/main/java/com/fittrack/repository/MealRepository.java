package com.fittrack.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fittrack.entity.Meal;

@Repository
public interface MealRepository  extends JpaRepository<Meal,Long> {

}

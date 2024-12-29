package com.fittrack.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fittrack.entity.Workout;

@Repository
public interface WorkoutRepository extends JpaRepository<Workout,Long> {

}
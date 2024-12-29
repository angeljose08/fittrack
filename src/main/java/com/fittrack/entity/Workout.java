package com.fittrack.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="workout_details")
public class Workout {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long userid;
	
	@Column(name="workout_name")
	private String workoutname;
	
	@Column(name="workout_type")
	private String workouttype;
	
	@Column(name="workout_plan")
	private String workoutplan;
	
	@Column(name="aim_of_workout")
	private String aimofworkout;

	public Long getUserid() {
		return userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	public String getWorkoutname() {
		return workoutname;
	}

	public void setWorkoutname(String workoutname) {
		this.workoutname = workoutname;
	}

	public String getWorkouttype() {
		return workouttype;
	}

	public void setWorkouttype(String workouttype) {
		this.workouttype = workouttype;
	}

	public String getWorkoutplan() {
		return workoutplan;
	}

	public void setWorkoutplan(String workoutplan) {
		this.workoutplan = workoutplan;
	}

	public String getAimofworkout() {
		return aimofworkout;
	}

	public void setAimofworkout(String aimofworkout) {
		this.aimofworkout = aimofworkout;
	}
}

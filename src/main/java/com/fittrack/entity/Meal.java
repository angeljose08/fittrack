package com.fittrack.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="meal_details")
public class Meal {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long userid;
	
	@Column(name="breakfast")
	private String breakfast;
	
	@Column(name="breakfast_calorie")
	private String breakfastcalorie;
	
	@Column(name="lunch")
	private String lunch;
	
	@Column(name="lunch_calorie")
	private String lunchcalorie;
	
	@Column(name="dinner")
	private String dinner;
	
	@Column(name="dinner_calorie")
	private String dinnercalorie;

	public Long getUserid() {
		return userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	public String getBreakfast() {
		return breakfast;
	}

	public void setBreakfast(String breakfast) {
		this.breakfast = breakfast;
	}

	public String getBreakfastcalorie() {
		return breakfastcalorie;
	}

	public void setBreakfastcalorie(String breakfastcalorie) {
		this.breakfastcalorie = breakfastcalorie;
	}

	public String getLunch() {
		return lunch;
	}

	public void setLunch(String lunch) {
		this.lunch = lunch;
	}

	public String getLunchcalorie() {
		return lunchcalorie;
	}

	public void setLunchcalorie(String lunchcalorie) {
		this.lunchcalorie = lunchcalorie;
	}

	public String getDinner() {
		return dinner;
	}

	public void setDinner(String dinner) {
		this.dinner = dinner;
	}

	public String getDinnercalorie() {
		return dinnercalorie;
	}

	public void setDinnercalorie(String dinnercalorie) {
		this.dinnercalorie = dinnercalorie;
	}
	
}

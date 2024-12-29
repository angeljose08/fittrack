package com.fittrack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fittrack.entity.Booking;
import com.fittrack.entity.Meal;
import com.fittrack.entity.User;
import com.fittrack.entity.Workout;
import com.fittrack.service.BookingService;
import com.fittrack.service.MealService;
import com.fittrack.service.UserService;
import com.fittrack.service.WorkoutService;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	@Autowired
	MealService mealService;
	@Autowired
	WorkoutService workoutService;
	@Autowired
	BookingService bookingService;
	
	
	@GetMapping("/")
	public String index() {
		return "index";	
	}
	
	@GetMapping("/login")
	public ModelAndView login() {
		return new ModelAndView("login");
	}
	
	@PostMapping("/login")
	public String loginUser(@ModelAttribute User user, RedirectAttributes redirectAttributes) { 
		// Perform login logic here 
		// For demonstration, assume login is always successful 
		redirectAttributes.addFlashAttribute("message", "Successfully logged in"); 
		return "redirect:/login-success"; 
	}
	
	@GetMapping("/user-register")
	public ModelAndView register() {
		ModelAndView mav=new ModelAndView("user_register");
		mav.addObject("user",new User());
		return mav;
	}
	
	@PostMapping("/save-user")
	public String saveStaff(@ModelAttribute User user) {
		userService.saveUser(user);
		return "redirect:/";
	}
	
	@GetMapping("/login-success") 
	public ModelAndView loginSuccess() { 
		ModelAndView mav = new ModelAndView("login-success"); 
		return mav; 
	}
	
	@GetMapping("/userdetails")
	public ModelAndView userDetails() {
		ModelAndView mav=new ModelAndView("userdetails");
		mav.addObject("user",new User());
		return mav;
	}
	
	@PostMapping("/save-userdetails")
	public String saveUserdetails(@ModelAttribute User user) {
		userService.saveUser(user);
		return "redirect:/";
	}
	
	@GetMapping("/mealdetails")
	public ModelAndView mealDetails() {
		ModelAndView mav=new ModelAndView("mealdetails");
		mav.addObject("meal",new Meal());
		return mav;
	}
	
	@PostMapping("/save-mealdetails")
	public String saveMealdetails(@ModelAttribute Meal meal) {
		mealService.saveMeal(meal);
		return "redirect:/";
	}
	
	@GetMapping("/workoutdetails")
	public ModelAndView workoutDetails() {
		ModelAndView mav=new ModelAndView("workoutdetails");
		mav.addObject("workout",new Workout());
		return mav;
	}
	
	@PostMapping("/save-workoutdetails")
	public String saveWorkoutdetails(@ModelAttribute Workout workout) {
		workoutService.saveWorkout(workout);
		return "redirect:/";
	}
	
	@GetMapping("/bookingdetails")
	public ModelAndView bookingDetails() {
		ModelAndView mav=new ModelAndView("bookingdetails");
		mav.addObject("booking",new Booking());
		return mav;
	}
	
	@PostMapping("/save-bookingdetails")
	public String saveBookingdetails(@ModelAttribute Booking booking) {
		bookingService.saveBooking(booking);
		return "redirect:/";
	}
	
}
package com.fittrack.service;

import java.util.List;

import com.fittrack.entity.User;

public interface UserService {
	
	void saveUser(User user);
	
	List<User> getAllUsers();
	
	User getUserById(Long id);
	
}

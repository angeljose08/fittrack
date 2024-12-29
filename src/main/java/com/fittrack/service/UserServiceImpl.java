package com.fittrack.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fittrack.entity.User;
import com.fittrack.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserRepository userRepository;
	
	@Override
	public void saveUser(User user) {
		if (user.getUserid() == null) {
			userRepository.save(user);
		} else {
			User staffUpdate = userRepository.findById(user.getUserid()).get();
			staffUpdate.setUserid(user.getUserid());
			staffUpdate.setUsername(user.getUsername());
			staffUpdate.setPassword(user.getPassword());
			staffUpdate.setAge(user.getAge());
			staffUpdate.setHeight(user.getHeight());
			staffUpdate.setWeight(user.getWeight());
			userRepository.save(staffUpdate);
		}
	}
	
	@Override
	public List<User> getAllUsers(){
		return userRepository.findAll();
	}
	
	@Override
	public User getUserById(Long id) {
		return userRepository.findById(id).orElse(null);
	}
	
}

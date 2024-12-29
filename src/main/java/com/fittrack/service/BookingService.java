package com.fittrack.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fittrack.entity.Booking;
import com.fittrack.repository.BookingRepository;

@Service
public class BookingService {
	@Autowired
	BookingRepository bookingRepository;
	
	public void saveBooking(Booking booking) {
		bookingRepository.save(booking);
	}
	
	public List<Booking> getAllBookings(){
		return bookingRepository.findAll();
	}
	
	public Booking getUserById(Long id) {
		return bookingRepository.findById(id).orElse(null);
	}
}

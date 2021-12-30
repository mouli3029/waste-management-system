package com.mouli.repos;

import org.springframework.data.repository.CrudRepository;

import com.mouli.beans.Booking;

public interface SlotBookingRepo extends CrudRepository<Booking,Integer>{
	
}

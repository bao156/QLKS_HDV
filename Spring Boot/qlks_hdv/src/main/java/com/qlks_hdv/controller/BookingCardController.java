package com.qlks_hdv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.qlks_hdv.dto.BookingCardDTO;
import com.qlks_hdv.service.impl.BookingCardService;

@RestController
public class BookingCardController {
	
	@Autowired
	private BookingCardService cardService;
	
	@PostMapping("/bookingcard")
	public BookingCardDTO saveBookingCard(@RequestBody BookingCardDTO bookingCardDTO)
	{
		cardService.save(bookingCardDTO);
		return bookingCardDTO;
	}
}

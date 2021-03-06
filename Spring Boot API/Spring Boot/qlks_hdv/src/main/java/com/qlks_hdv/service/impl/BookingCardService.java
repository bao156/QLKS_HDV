package com.qlks_hdv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qlks_hdv.dto.BookingCardDTO;
import com.qlks_hdv.entity.BookingCardEntity;
import com.qlks_hdv.entity.CustomerEntity;
import com.qlks_hdv.entity.DiscountEntity;
import com.qlks_hdv.repository.CustomerRepository;
import com.qlks_hdv.repository.DiscountRepository;
import com.qlks_hdv.service.IBookingCardService;

@Service
public class BookingCardService implements IBookingCardService {
	
	@Autowired
	private BookingCardRepository cardRepo;
	
	@Autowired
	private DiscountRepository discountRepo;
	
	@Autowired
	private CustomerRepository customerRepo;
	
	public BookingCardDTO save(BookingCardDTO bookingCardDTO)
	{
		BookingCardEntity bookingCard=new BookingCardEntity();
		DiscountEntity  discount=new DiscountEntity();
		discount=discountRepo.findOne(bookingCardDTO.getDiscountId());
		CustomerEntity customer=new CustomerEntity();
		customer=customerRepo.findOne(bookingCardDTO.getCustomerId());
		bookingCard.setDiscount(discount);
		bookingCard.setCustomer(customer);
		cardRepo.save(bookingCard);
		return bookingCardDTO;
	}

}

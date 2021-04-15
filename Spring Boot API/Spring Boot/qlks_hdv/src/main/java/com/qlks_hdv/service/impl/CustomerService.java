package com.qlks_hdv.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qlks_hdv.converter.CustomerConverting;
import com.qlks_hdv.dto.CustomerDTO;
import com.qlks_hdv.entity.CustomerEntity;
import com.qlks_hdv.entity.UserEntity;
import com.qlks_hdv.repository.CustomerRepository;
import com.qlks_hdv.repository.UserRepository;
import com.qlks_hdv.service.ICustomerService;

@Service
public class CustomerService implements ICustomerService{
	
	@Autowired
	private CustomerRepository cusRepo;
	
	@Autowired
	private CustomerConverting customerConvert;
	
	@Autowired
	private UserRepository userRepo;
	
	@Override
	public CustomerDTO save(CustomerDTO customerDTO)
	{
		CustomerEntity customer=new CustomerEntity();
		if(customerDTO.getId()!=null)
		{
			int tempId=customerDTO.getId();
			customer=customerConvert.toEntity(customerDTO, customer);
			customer.setId(tempId);
		}
		else
		{
			customer=customerConvert.toEntity(customerDTO, customer);
		}
		UserEntity username=new UserEntity();
		username=userRepo.findOne(customerDTO.getUsername());
		customer.setUser(username);
		cusRepo.save(customer);
		return customerDTO;
	}

	
	
	
}

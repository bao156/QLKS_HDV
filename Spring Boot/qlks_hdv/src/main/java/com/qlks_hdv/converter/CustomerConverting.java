package com.qlks_hdv.converter;

import org.springframework.stereotype.Component;

import com.qlks_hdv.dto.CustomerDTO;
import com.qlks_hdv.entity.CustomerEntity;

@Component
public class CustomerConverting {
	public CustomerEntity toEntity(CustomerDTO customerDTO, CustomerEntity customer)
	{
		customer.setEmail(customerDTO.getEmail());
		customer.setFirstName(customerDTO.getFirstName());
		customer.setLastName(customerDTO.getLastName());
		customer.setPhone(customerDTO.getPhone());	
		return customer;
	}
	
	public CustomerEntity toDTO(CustomerDTO customerDTO, CustomerEntity customer)
	{
		customerDTO.setEmail(customer.getEmail());
		customerDTO.setFirstName(customer.getFirstName());
		customerDTO.setLastName(customer.getLastName());
		customerDTO.setPhone(customer.getPhone());
		return customer;
	}

}

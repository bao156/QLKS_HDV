package com.qlks_hdv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.qlks_hdv.dto.CustomerDTO;
import com.qlks_hdv.service.impl.CustomerService;

@RestController
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	@PostMapping("/customer")
	public CustomerDTO saveCustomer(@RequestBody CustomerDTO customerDTO)
	{
		customerService.save(customerDTO);
		return customerDTO;
	}
	
	@PutMapping("/customer/{id}")
	public CustomerDTO updateCustomer(@PathVariable("id") Integer id,@RequestBody CustomerDTO customerDTO)
	{
		customerDTO.setId(id);
		customerService.save(customerDTO);
		return customerDTO;
	}
	

}

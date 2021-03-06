package com.qlks_hdv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.qlks_hdv.dto.DiscountDTO;
import com.qlks_hdv.service.impl.DiscountService;

@RestController
public class DiscountController {

	@Autowired
	private DiscountService discountService;
	
	@PostMapping("/discount")
	public DiscountDTO saveDiscount(@RequestBody DiscountDTO discountDTO)
	{
		System.out.println("\nMEO MEO  "+discountDTO.getDiscountName());
		System.out.println("\nMEO MEO  "+discountDTO.getDiscountValue());
		discountService.save(discountDTO);
		return discountDTO;
	}
	
	
	
	@PutMapping("/discount/{id}")
	public DiscountDTO updateDiscount(@PathVariable("id") Integer id,@RequestBody DiscountDTO discountDTO)
	{
		discountDTO.setId(id);
		discountService.save(discountDTO);
		return discountDTO;
	}
}

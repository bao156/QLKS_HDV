package com.qlks_hdv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qlks_hdv.converter.DiscountConverting;
import com.qlks_hdv.dto.DiscountDTO;
import com.qlks_hdv.entity.DiscountEntity;
import com.qlks_hdv.repository.DiscountRepository;
import com.qlks_hdv.service.IDiscountService;

@Service
public class DiscountService implements IDiscountService {

	@Autowired
	private DiscountRepository discountRepo;
	
	@Autowired
	private DiscountConverting discountConvert;
	
	public DiscountDTO save(DiscountDTO discountDTO)
	{
		DiscountEntity discount=new DiscountEntity();
		
		if(discountDTO.getId()!=null)
		{
			int temp=discountDTO.getId();
			discount=discountConvert.toEntity(discountDTO, discount);
			discount.setId(temp);
		}
		else
		{
			discount=discountConvert.toEntity(discountDTO, discount);
		}
		discountRepo.save(discount);
		return discountDTO;
	}
}

package com.qlks_hdv.converter;

import org.springframework.stereotype.Component;

import com.qlks_hdv.dto.DiscountDTO;
import com.qlks_hdv.entity.DiscountEntity;

@Component
public class DiscountConverting {
	
	public DiscountEntity toEntity(DiscountDTO discountDTO, DiscountEntity discount)
	{
		discount.setDiscountName(discountDTO.getDiscountName());
		discount.setDiscountValue(discountDTO.getDiscountValue());
		discount.setUseAt(discountDTO.getUseAt());
		discount.setEndAt(discountDTO.getEndAt());
		return discount;
	}
	
	public DiscountDTO toDTO(DiscountDTO discountDTO, DiscountEntity discount)
	{
		discountDTO.setDiscountName(discount.getDiscountName());
		discountDTO.setDiscountValue(discount.getDiscountValue());
		discountDTO.setUseAt(discount.getUseAt());
		discountDTO.setEndAt(discount.getEndAt());
		return discountDTO;
	}
	

}

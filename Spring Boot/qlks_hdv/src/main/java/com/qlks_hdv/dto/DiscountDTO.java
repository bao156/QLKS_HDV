package com.qlks_hdv.dto;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.OneToMany;

import org.springframework.format.annotation.DateTimeFormat;

import com.qlks_hdv.entity.BookingCardEntity;

public class DiscountDTO {
	private Integer id;
	
	private String discountName;
	
	private Float discountValue;
	
	private String useAt;
	
	private String endAt;
	
	
	public DiscountDTO() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	
	public String getDiscountName() {
		return discountName;
	}

	public void setDiscountName(String discountName) {
		this.discountName = discountName;
	}

	public Float getDiscountValue() {
		return discountValue;
	}

	public void setDiscountValue(Float discountValue) {
		this.discountValue = discountValue;
	}

	public String getUseAt() {
		return useAt;
	}

	public void setUseAt(String useAt) {
		this.useAt = useAt;
	}

	public String getEndAt() {
		return endAt;
	}

	public void setEndAt(String endAt) {
		this.endAt = endAt;
	}
	
	

}

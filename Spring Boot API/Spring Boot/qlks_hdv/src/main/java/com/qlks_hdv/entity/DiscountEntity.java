package com.qlks_hdv.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class DiscountEntity {
	@Id
	@GeneratedValue
	@Column(name="id")
	private Integer id;
	
	@Column(name="discount_name")
	private String name;
	
	@Column(name="discount_value")
	private Float value;
	
	@Column(name="useAt")
	@DateTimeFormat(pattern = "yyyy/mm/dd")  
	private String useAt;
	
	@Column(name="endAt")
	@DateTimeFormat(pattern = "yyyy/mm/dd")  
	private String endAt;

	public Integer getId() {
		return id;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Float getValue() {
		return value;
	}

	public void setValue(Float value) {
		this.value = value;
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


	public DiscountEntity() {
		super();
	}


	public DiscountEntity(Integer id, String name, Float value, String useAt, String endAt) {
		super();
		this.id = id;
		this.name = name;
		this.value = value;
		this.useAt = useAt;
		this.endAt = endAt;
	}
	
	
}

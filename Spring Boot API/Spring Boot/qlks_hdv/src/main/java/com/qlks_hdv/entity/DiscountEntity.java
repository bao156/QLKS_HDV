package com.qlks_hdv.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="Discount")
public class DiscountEntity {
	@Id
	@GeneratedValue
	@Column(name="id")
	private Integer id;
	
	@Column(name="discount_name")
	private String discountName;
	
	@Column(name="discount_value")
	private Float discountValue;
	
	@Column(name="useAt")
	@DateTimeFormat(pattern = "yyyy/mm/dd")  
	private String useAt;
	
	@Column(name="endAt")
	@DateTimeFormat(pattern = "yyyy/mm/dd")  
	private String endAt;
	
	@OneToMany(mappedBy="discount")
	private List<BookingCardEntity> bookingCard;
	
	
	
	public DiscountEntity() {
		super();
	}
	
	

	public List<BookingCardEntity> getBookingCard() {
		return bookingCard;
	}



	public void setBookingCard(List<BookingCardEntity> bookingCard) {
		this.bookingCard = bookingCard;
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

package com.qlks_hdv.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class BookingCardEntity {
	@Id
	@GeneratedValue
	@Column(name="id")
	private Integer id;
	
}

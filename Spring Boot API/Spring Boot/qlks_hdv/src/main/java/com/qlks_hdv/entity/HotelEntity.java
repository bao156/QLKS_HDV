package com.qlks_hdv.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Hotel")
public class HotelEntity {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private Integer id;
	
	@Column(name="hotel_name")
	private String hotelName;
	
	@Column(name="description")
	private String description;
	
	@Column(name="logo")
	private String logo;
	
	@OneToMany(mappedBy="hotel")
	private List<RolesEntity> roles=new ArrayList<>();

	public HotelEntity(Integer id, String hotelName, String description, String logo, List<RolesEntity> roles) {
		super();
		this.id = id;
		this.hotelName = hotelName;
		this.description = description;
		this.logo = logo;
		this.roles = roles;
	}

	public HotelEntity() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getHotelName() {
		return hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public List<RolesEntity> getRoles() {
		return roles;
	}

	public void setRoles(List<RolesEntity> roles) {
		this.roles = roles;
	}
	
	
}

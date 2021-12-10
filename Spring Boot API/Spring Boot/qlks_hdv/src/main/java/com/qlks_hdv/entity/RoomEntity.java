package com.qlks_hdv.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Room")
public class RoomEntity {
	
	@Id
	@Column(name="code")
	private String code;
	
	@Column(name="status")
	private String status;
	
	@ManyToOne
	@JoinColumn(name="type_id")
	private RoomTypeEntity type;

	
	public RoomEntity() {
		super();
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public RoomTypeEntity getType() {
		return type;
	}

	public void setType(RoomTypeEntity type) {
		this.type = type;
	}

	
	
	

}

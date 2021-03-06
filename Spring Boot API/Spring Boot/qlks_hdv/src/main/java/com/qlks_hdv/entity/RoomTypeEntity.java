package com.qlks_hdv.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Room_type")
public class RoomTypeEntity {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private Integer id;
	
	@Column(name="number_of_bed")
	private Integer numberOfBed;
	
	@OneToMany(mappedBy="type")
	private List<RoomEntity> room;
	

	public RoomTypeEntity() {
		super();
	}
	

	public List<RoomEntity> getRoom() {
		return room;
	}

	public void setRoom(List<RoomEntity> room) {
		this.room = room;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getNumberOfBed() {
		return numberOfBed;
	}

	public void setNumberOfBed(Integer numberOfBed) {
		this.numberOfBed = numberOfBed;
	}


	
	
	
	
}

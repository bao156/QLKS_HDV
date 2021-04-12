package com.qlks_hdv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qlks_hdv.converter.RoomConverting;
import com.qlks_hdv.dto.RoomDTO;
import com.qlks_hdv.entity.RoomEntity;
import com.qlks_hdv.entity.RoomTypeEntity;
import com.qlks_hdv.repository.RoomRepostiory;
import com.qlks_hdv.repository.RoomTypeRepository;
import com.qlks_hdv.service.IRoomService;

@Service
public class RoomService implements IRoomService{
	
	
	@Autowired
	private RoomRepostiory roomRepo;
	
	@Autowired
	private RoomTypeRepository typeRepo;
	
	@Autowired
	private RoomConverting roomConvert;
	
	public RoomDTO  save(RoomDTO roomDTO)
	{
		RoomEntity room=new RoomEntity();	
		room=roomConvert.toEntity(roomDTO, room);

		RoomTypeEntity type=new RoomTypeEntity();
		type=typeRepo.findOneByNumberOfBed(roomDTO.getType());
		room.setType(type);
		roomRepo.save(room);
		return roomDTO;
	}

}

package com.qlks_hdv.converter;

import org.springframework.stereotype.Component;

import com.qlks_hdv.dto.RoomDTO;
import com.qlks_hdv.entity.RoomEntity;

@Component
public class RoomConverting {
	public RoomEntity toEntity(RoomDTO roomDTO,RoomEntity room)
	{
		room.setCode(roomDTO.getCode());
		room.setStatus(roomDTO.getStatus());
		return room;
	}
	
	public RoomDTO toDTO(RoomDTO roomDTO,RoomEntity room)
	{
		roomDTO.setType(room.getType().getNumberOfBed());
		roomDTO.setCode(room.getCode());
		roomDTO.setStatus(room.getStatus());
		return roomDTO;
	}

}

package com.qlks_hdv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qlks_hdv.dto.RoomTypeDTO;
import com.qlks_hdv.entity.CustomerEntity;
import com.qlks_hdv.entity.RoomTypeEntity;
import com.qlks_hdv.entity.UserEntity;
import com.qlks_hdv.repository.RoomTypeRepository;

@Service
public class RoomtypeService {
	
	@Autowired
	private RoomTypeRepository typeRepo;
	
	public RoomTypeDTO save(RoomTypeDTO typeDTO)
	{
		RoomTypeEntity type=new RoomTypeEntity();
		if(typeDTO.getId()!=null)
		{
			int tempId=typeDTO.getId();
			type.setNumberOfBed(typeDTO.getNumberOfBed());
			type.setId(tempId);
		}
		else
		{
			type.setNumberOfBed(typeDTO.getNumberOfBed());
		}
		typeRepo.save(type);
		
		return typeDTO;
	}

}

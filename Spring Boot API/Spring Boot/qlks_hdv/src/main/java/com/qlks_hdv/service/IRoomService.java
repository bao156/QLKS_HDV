package com.qlks_hdv.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.qlks_hdv.dto.RoomDTO;
import com.qlks_hdv.repository.RoomRepostiory;

public interface IRoomService {
	RoomDTO save(RoomDTO roomDTO);
	
}

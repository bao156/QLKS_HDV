package com.qlks_hdv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.qlks_hdv.dto.RoomDTO;
import com.qlks_hdv.service.impl.RoomService;

@RestController
public class RoomController {
	
	@Autowired
	private RoomService roomService;
	
	@PostMapping("/room")
	public RoomDTO saveRoom(@RequestBody RoomDTO roomDTO)
	{
		roomService.save(roomDTO);
		return roomDTO;
	}
	
	@PutMapping("/room/{code}")
	public RoomDTO updateRoom(@PathVariable("code") String code,@RequestBody RoomDTO roomDTO)
	{
		roomDTO.setCode(code);
		roomService.save(roomDTO);
		return roomDTO;
	}
}

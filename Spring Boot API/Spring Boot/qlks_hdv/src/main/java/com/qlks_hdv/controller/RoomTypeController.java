package com.qlks_hdv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.qlks_hdv.dto.RoomTypeDTO;
import com.qlks_hdv.service.impl.RoomtypeService;

@RestController
public class RoomTypeController {

	@Autowired
	private RoomtypeService typeService;
	
	
	@PostMapping("/type")
	public RoomTypeDTO save(@RequestBody RoomTypeDTO typeDTO)
	{
		typeService.save(typeDTO);
		return typeDTO;
	}
	
	@PutMapping("/type/{id}")
	public RoomTypeDTO update(@PathVariable("id")Integer id, @RequestBody RoomTypeDTO typeDTO)
	{
		typeDTO.setId(id);
		typeService.save(typeDTO);
		return typeDTO;
	}
}

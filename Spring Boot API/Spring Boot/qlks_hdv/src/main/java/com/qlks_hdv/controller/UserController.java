package com.qlks_hdv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.qlks_hdv.dto.UserDTO;
import com.qlks_hdv.entity.UserEntity;
import com.qlks_hdv.service.impl.UserService;

@RestController
public class UserController {
	@Autowired
	private UserService userService;
	
	
	@PostMapping("/user")
	public UserDTO saveUser(@RequestBody UserDTO userDTO)
	{
		return userService.save(userDTO);
	}
	
	@DeleteMapping("/user")
	public void deleteUser(@RequestBody String[] username)
	{
		userService.delete(username);
	}
	
	@PutMapping("/user/{username}")
	public UserDTO updateUser(@PathVariable("username") String username,@RequestBody UserDTO userDTO)
	{
		userDTO.setUsername(username);
		userService.save(userDTO);
		return userDTO;
	}

}

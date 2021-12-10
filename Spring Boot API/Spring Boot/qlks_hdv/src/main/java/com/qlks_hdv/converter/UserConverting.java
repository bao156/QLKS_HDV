package com.qlks_hdv.converter;

import org.springframework.stereotype.Component;

import com.qlks_hdv.dto.UserDTO;
import com.qlks_hdv.entity.UserEntity;

@Component
public class UserConverting {
	public UserEntity toEntity(UserDTO dto)
	{
		UserEntity users=new UserEntity();
		users.setUsername(dto.getUsername());
		users.setPassword(dto.getPassword());
		return users;
	}
	
	public UserDTO toDTO(UserEntity user)
	{
		UserDTO userDTO=new UserDTO();
		userDTO.setUsername(user.getUsername());
		userDTO.setPassword(user.getPassword());	
		return userDTO;
	}
	
}

package com.qlks_hdv.service;

import com.qlks_hdv.dto.UserDTO;

public interface IUserService {
	UserDTO save(UserDTO userDTO);
	void delete(String[] username);
}

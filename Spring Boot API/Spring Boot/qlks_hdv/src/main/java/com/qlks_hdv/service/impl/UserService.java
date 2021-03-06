package com.qlks_hdv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import com.qlks_hdv.converter.UserConverting;
import com.qlks_hdv.dto.UserDTO;
import com.qlks_hdv.entity.RolesEntity;
import com.qlks_hdv.entity.UserEntity;
import com.qlks_hdv.repository.RoleRepository;
import com.qlks_hdv.repository.UserRepository;
import com.qlks_hdv.service.IUserService;

@Service
public class UserService implements IUserService{

	@Autowired
	private UserRepository userRepo;
	
	@Autowired
	private RoleRepository roleRepo;
	
	@Autowired
	private UserConverting convert;
	
	@Override
	public UserDTO save(UserDTO userDTO)
	{
		UserEntity users=new UserEntity();
		UserEntity userUpdate=new UserEntity();
		userUpdate=userRepo.findOne(userDTO.getUsername());
		if(userUpdate!=null)
		{
			users=userUpdate;
			users.setPassword(userDTO.getPassword());
			userDTO.setRoleName(users.getRole().getRoleName());
		}
		else
		{
			RolesEntity roles=roleRepo.findOneByRoleName(userDTO.getRoleName());
			/// ĐỂ SET ROLE Ở TRÊN CONVERT LÀ ĂN LX
			users=convert.toEntity(userDTO);
			users.setRole(roles);
		}
		userRepo.save(users);
		return userDTO;
	}
	
	@Override
	public void delete(String[] username )
	{
		for(String i : username)
		{
			userRepo.delete(i);
		}
	}
}

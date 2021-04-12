package com.qlks_hdv.converter;

import org.springframework.stereotype.Component;

import com.qlks_hdv.dto.StaffDTO;
import com.qlks_hdv.entity.StaffEntity;

@Component
public class StaffConverting {

	public StaffEntity toEntity(StaffDTO staffDTO)
	{
		StaffEntity staff=new StaffEntity();
		staff.setFirstName(staffDTO.getFirstName());
		staff.setLastName(staffDTO.getLastName());
		staff.setPhone(staffDTO.getPhone());
		staff.setEmail(staffDTO.getEmail());
		staff.setAddress(staffDTO.getAddress());
		return staff;
		
	}
	
	public StaffDTO toDTO(StaffEntity staff)
	{
		StaffDTO staffDTO=new StaffDTO();
		staffDTO.setId(staff.getId());
		staffDTO.setFirstName(staff.getFirstName());
		staffDTO.setLastName(staff.getLastName());
		staffDTO.setPhone(staff.getPhone());
		staffDTO.setEmail(staff.getEmail());
		staffDTO.setAddress(staff.getAddress());
		staffDTO.setUsername(staff.getUser().getUsername());
		return staffDTO;
	}
}

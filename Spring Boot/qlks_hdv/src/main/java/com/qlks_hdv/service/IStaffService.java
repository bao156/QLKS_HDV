package com.qlks_hdv.service;

import com.qlks_hdv.dto.StaffDTO;
import com.qlks_hdv.entity.StaffEntity;
import com.qlks_hdv.repository.StaffRepository;

public interface IStaffService {

	StaffDTO save(StaffDTO staffDTO);
	StaffEntity findOneById(Integer id);
}

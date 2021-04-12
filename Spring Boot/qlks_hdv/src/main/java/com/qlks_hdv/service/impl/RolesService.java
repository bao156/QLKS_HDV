package com.qlks_hdv.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qlks_hdv.repository.RoleRepository;


@Service
public class RolesService {
	@Autowired
	private RoleRepository repo;
}

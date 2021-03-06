package com.qlks_hdv.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.qlks_hdv.entity.RolesEntity;

public interface RoleRepository extends JpaRepository<RolesEntity, Integer> {
	RolesEntity findOneByRoleName(String roleName);
}

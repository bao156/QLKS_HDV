package com.qlks_hdv.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.qlks_hdv.entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity, String> {

}

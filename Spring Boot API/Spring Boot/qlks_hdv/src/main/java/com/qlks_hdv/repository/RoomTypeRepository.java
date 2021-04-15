package com.qlks_hdv.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.qlks_hdv.entity.RoomTypeEntity;

public interface RoomTypeRepository extends JpaRepository<RoomTypeEntity, Integer>{
	RoomTypeEntity findOneByNumberOfBed(Integer number);
}

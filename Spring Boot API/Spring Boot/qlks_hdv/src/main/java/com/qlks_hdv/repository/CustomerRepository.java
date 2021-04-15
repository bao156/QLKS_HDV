package com.qlks_hdv.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.qlks_hdv.entity.CustomerEntity;

public interface CustomerRepository extends JpaRepository<CustomerEntity, Integer>{
}

package com.ani.Repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ani.Entity.AdminEntity;

public interface IRepository extends JpaRepository<AdminEntity, Integer> {
	Optional<AdminEntity> findBySnameAndSemail(String sname, String semail);
}

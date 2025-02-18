package com.ani.Service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.ani.Entity.AdminEntity;

public interface IServiceMng {

	public String registorStudent(AdminEntity ste);
	public Page<AdminEntity> findAllStudent(Pageable pageable);
	public String deleteStudent(int id);
	public String studentDetails_update(AdminEntity ste);
	public String loginUser(String username,String mail);
	public AdminEntity findById(int id);
	
}

package com.ani.Service;

import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.ani.Entity.Course_joing;


public interface IServiceMngCourse {

	public String registorjoiner(Course_joing crj);
	public Page<Course_joing> findAllJoiners(Pageable pageable);
	public String deleteJoiner(int id);
	public String joinertDetails_update(Course_joing crj);
	public Course_joing loginjoin_Users(String username,String mail);
	public Course_joing findById(int id);
	
}

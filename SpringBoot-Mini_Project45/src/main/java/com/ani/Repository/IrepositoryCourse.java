package com.ani.Repository;

import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ani.Entity.Course_joing;

public interface IrepositoryCourse extends JpaRepository<Course_joing, Integer> {
	public Course_joing findByPnameAndPemail(String username, String mail);
}

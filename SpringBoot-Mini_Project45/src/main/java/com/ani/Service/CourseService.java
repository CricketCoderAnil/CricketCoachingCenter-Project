package com.ani.Service;

import java.util.NoSuchElementException;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.ani.Entity.Course_joing;
import com.ani.Repository.IrepositoryCourse;

@Service
public class CourseService implements IServiceMngCourse {

	@Autowired
	private IrepositoryCourse crepo;
	@Override
	public String registorjoiner(Course_joing crj) {
		Course_joing cr=crepo.save(crj);
		return "Joind Successfully! "+cr.getPid()+"  "+cr.getPname();
	}

	@Override
	public Page<Course_joing> findAllJoiners(Pageable pageable) {
		return crepo.findAll(pageable);
	}

	@Override
	public String deleteJoiner(int id) {
		Course_joing opt=crepo.findById(id).orElseThrow(()->new IllegalArgumentException("Invalid Id"));
		crepo.delete(opt);
		
		return "Deleted";
	}

	@Override
	public String joinertDetails_update(Course_joing crj) {
		Optional<Course_joing> opt=crepo.findById(crj.getPid());
		if(opt.isPresent()) {
			Course_joing cr=opt.get();
			crepo.save(crj);
			return "Updated!";
		}
		return "Id Not Found!";
	}

	@Override
	public Course_joing loginjoin_Users(String username, String mail) {
		Course_joing cr= crepo.findByPnameAndPemail(username, mail);
		System.out.println(cr);
	    return cr; 
	}

	

	@Override
	public Course_joing findById(int id) {
		Course_joing opt=crepo.findById(id).orElseThrow(()->new IllegalArgumentException("Invalid Id"));
		return opt;
	}

}

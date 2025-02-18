package com.ani.Service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.ani.Entity.AdminEntity;
import com.ani.Repository.IRepository;
@Service
public class ServiceImpl implements IServiceMng {

	@Autowired
	private IRepository irpo;
	
	
	@Override
	public String registorStudent(AdminEntity ste) {
		AdminEntity reg=irpo.save(ste);
		return "Student Registor with  "+reg.getSid();
	}
	@Override
	public Page<AdminEntity> findAllStudent(Pageable pageable) {
		return irpo.findAll(pageable);
	}
	@Override
	public AdminEntity findById(int id) {
		AdminEntity stud=irpo.findById(id).orElseThrow(()->new IllegalArgumentException("Invalid Id"));
		return stud;
	}
	@Override
	public String deleteStudent(int id) {
		AdminEntity del=irpo.findById(id).orElseThrow(()->new IllegalArgumentException("Invalid Id"));
		irpo.delete(del);
		return del.getSid()+"  Id Student Deleted Successfully!";
	}
	@Override
	public String studentDetails_update(AdminEntity ste) {
		Optional<AdminEntity> opt=irpo.findById(ste.getSid());
		if(opt.isPresent()) {
			AdminEntity std=opt.get();
			std.setSname(ste.getSname());
			std.setSemail(ste.getSemail());
			std.setSphno(ste.getSphno());
			std.setExp(ste.getExp());
			std.setLocation(ste.getLocation());
			std.setFee(ste.getFee());
			irpo.save(std);
			return ste.getSid()+"  Id Student Record is Updated!";
		}
		return   "Id Not Found Record Not Updated!";
	}
	@Override
	public String loginUser(String username, String mail) {
		Optional<AdminEntity>opt=irpo.findBySnameAndSemail(username, mail);
		if(opt.isPresent()) {
			System.out.println(opt.get());
			return "Login Successful! Welcome "+username;
		}
		return "Invalid Credentials! Name or Email Not Found.";
	}
	
	
}

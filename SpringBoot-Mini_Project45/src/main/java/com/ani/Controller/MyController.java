package com.ani.Controller;


import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.ani.Entity.AdminEntity;
import com.ani.Service.IServiceMng;

import jakarta.servlet.http.HttpSession;

@Controller
public class MyController {
	
	
	@Autowired
	private IServiceMng isr;

	@GetMapping
	public String homePage() {
		return "index";
	}
	@GetMapping("/report")
	public String reportData(@ModelAttribute("stu") AdminEntity sten,Map<String,Object>map,@PageableDefault(page = 0,size = 3,sort = "sid",direction = Direction.ASC) Pageable pageable) {
		Page<AdminEntity> msg=isr.findAllStudent(pageable);
		map.put("result_Msg",msg);
		return "login_result";
	}
	
	@GetMapping("/registor")
	public String registorPage(@ModelAttribute("stu")AdminEntity stu) {
		return "registation_form";
	}
	@PostMapping("/registor")
	public String registor_Student(@ModelAttribute("stu")AdminEntity stud,RedirectAttributes rdab) {
		String msg=isr.registorStudent(stud);
		System.out.println(msg);
		rdab.addFlashAttribute("result_Msg", msg);
		return "redirect:/loginUser";
	}
	
	@GetMapping("/loginUser")
	public String loginForm(@ModelAttribute("stu") AdminEntity sten) {
		return "login_form";
	}
	@PostMapping("/loginUser")
	public String loginResult(@ModelAttribute("stu") AdminEntity sten,RedirectAttributes rda) {
		String msg=isr.loginUser(sten.getSname(), sten.getSemail());
		rda.addFlashAttribute("result_Msg",msg);
		System.out.println(sten.getSname()+"   "+ sten.getSemail());
		if(msg.startsWith("Login Successful! Welcome" )) {
			return "redirect:/report";
		}
		return "redirect:/loginUser";
		
		
	}
	@GetMapping("/edit")
	public String updateEmp_form(@RequestParam(value="no",required = false)Integer  no ,@ModelAttribute("stu") AdminEntity sten) {
		AdminEntity  ste=isr.findById(no);
		System.out.println(ste);
		BeanUtils.copyProperties(ste,sten);
		return "update_form";
	}
	@PostMapping("/edit")
	public String update_result(@ModelAttribute("stu") AdminEntity sten,RedirectAttributes rda) {
		String umsg=isr.studentDetails_update(sten);
		System.out.println(umsg);
		rda.addFlashAttribute("resultMsg",umsg);
		return "redirect:/report";
	}
	@GetMapping("/delete")
	public String delete_Student(@RequestParam(value="no",required = false) Integer no ,@ModelAttribute("stu") AdminEntity sten,RedirectAttributes rda) {
		String dmsg=isr.deleteStudent(no);
		System.out.println(no);
		System.out.println(dmsg);
		rda.addFlashAttribute("resultMsg",dmsg);
		return "redirect:/report";
	}
	@GetMapping("/cource")
	public String courceBroucher() {
		return "cource";
	}
	@GetMapping("/about-us")
	public String about_Us() {
		
		return "aboutus";
	}
	
	@GetMapping("/addrs")
	public String findme() {
		return "addrs";
	}
	
}

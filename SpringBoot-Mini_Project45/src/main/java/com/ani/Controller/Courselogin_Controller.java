package com.ani.Controller;

import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Optional;

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

import com.ani.Entity.Course_joing;
import com.ani.Service.IServiceMngCourse;

@Controller
public class Courselogin_Controller {

	@Autowired
	private IServiceMngCourse sjd;
	
	
	@GetMapping("/courcejoin")
	public String cource_join(@ModelAttribute("cjn")Course_joing crj) {
		return "cource_form";
	}
	@PostMapping("/courcejoin")
	public String joindPerson(@ModelAttribute("cjn")Course_joing crj,RedirectAttributes rda) {
		String msg=sjd.registorjoiner(crj);
		rda.addFlashAttribute("rmsg",msg);
		return "redirect:/courcejoin";
	}
	@GetMapping("/findalljoiners")
	public String FindAllJoiners(@ModelAttribute("cjn")Course_joing crj,Map<String ,Object>map,@PageableDefault(page = 0,size = 6,sort = "pid",direction = Direction.ASC)Pageable pageable) {
		Page<Course_joing> page=sjd.findAllJoiners(pageable);
		map.put("rmsg", page);
		System.out.println(page);
		return "findAlljoind_person";
	}
	
	
	@GetMapping("/loginform-joiner")
	public String loginjoiner_form(@ModelAttribute("cjn") Course_joing crj) {
	    return "course_loginperson";
	}

	@PostMapping("/loginform-joiner")
	public String loginjoiner_result(@ModelAttribute("cjn") Course_joing crj, Map<String, Object> map) { 
		Course_joing msg=sjd.loginjoin_Users(crj.getPname(), crj.getPemail());
	    if (msg == null) {
	        map.put("error", "Invalid login credentials. Please check your details and try again.");
	        map.put("rmsg", crj); 
	        return "redirect:/loginform-joiner"; 
	    }
	    map.put("rmsg", msg);
	    return "findeach_joiner";
	}

	
	@GetMapping("/editing")
	public String updateEmp_form(@RequestParam(value="no",required = false)Integer  no ,@ModelAttribute("cjn") Course_joing crj) {
		Course_joing  cr=sjd.findById(no);
		System.out.println(cr);
		BeanUtils.copyProperties(cr,crj);
		return "updatejoiner";
	}
	@PostMapping("/editing")
	public String update_result(@ModelAttribute("cjn") Course_joing crj,RedirectAttributes rda) {
		String um=sjd.joinertDetails_update(crj);
		System.out.println(um);
		rda.addFlashAttribute("rmsg",um);
		return "redirect:/findalljoiners";
	}
	@GetMapping("/deleting")
	public String delete_Student(@RequestParam(value="no",required = false) Integer no ,@ModelAttribute("cjn") Course_joing crj,RedirectAttributes rda) {
		String dm=sjd.deleteJoiner(no);
		System.out.println(no);
		System.out.println(dm);
		rda.addFlashAttribute("rmsg",dm);
		return "redirect:/findalljoiners";
	}
}

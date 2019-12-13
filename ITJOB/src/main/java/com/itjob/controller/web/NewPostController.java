package com.itjob.controller.web;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itjob.dto.CompanyDTO;
import com.itjob.dto.ContactDTO;
import com.itjob.dto.PostDTO;
import com.itjob.dto.RequirementDTO;
import com.itjob.service.PostService;
import com.itjob.utils.DateString;

@Controller
@RequestMapping(path = "dang-bai")

public class NewPostController {

	@Autowired
	private PostService PostService;
	
	@GetMapping
	public String newPost(HttpSession session) {
		CompanyDTO companyDTO = (CompanyDTO) session.getAttribute("company");
		if(companyDTO != null) {
			return "web/newpost";
			
		}
		return "web/login";
	}

	@PostMapping
	public String post(@RequestParam String position, @RequestParam String salary, @RequestParam int number, @RequestParam String jobtype,@RequestParam String address, @RequestParam String mota, @RequestParam  String quyenloi, @RequestParam String ngonngu, @RequestParam String kinhnghiem, @RequestParam String bangcap,@RequestParam String yeucaukhac, @RequestParam String name, @RequestParam String email, @RequestParam String phone, HttpSession session, ModelMap map) {
		CompanyDTO companyDTO = (CompanyDTO) session.getAttribute("company");
		
			PostDTO postDTO = new PostDTO();
			RequirementDTO requirementDTO = new RequirementDTO(ngonngu,kinhnghiem, bangcap);
			ContactDTO contactDTO = new ContactDTO();
			contactDTO.setEmail(email);
			contactDTO.setName(name);
			contactDTO.setPhone(phone);
			postDTO.setBenefit(quyenloi);
			postDTO.setSalary(salary);
			postDTO.setTypejob(jobtype);
			postDTO.setCompanyDTO(companyDTO);
			postDTO.setContactDTO(contactDTO);
			postDTO.setJD(mota);
			postDTO.setPosition(position);
			postDTO.setNo_member(number);
			postDTO.setProvince(address);
			postDTO.setRequirementDTO(requirementDTO);
			postDTO.setOther_requirements(yeucaukhac);
			postDTO.setTime(java.time.LocalDate.now().toString());
			PostService.addPost(postDTO);
			return "redirect:/trang-chu-cong-ty/cong-ty";
		
		
	}
}

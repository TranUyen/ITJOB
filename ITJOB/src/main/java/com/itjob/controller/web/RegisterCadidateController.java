package com.itjob.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itjob.entity.CandidateEntity;
import com.itjob.entity.ProfileEntity;
import com.itjob.service.CandidateService;



@Controller
@RequestMapping(path = "dang-ky-ung-vien")
public class RegisterCadidateController {
	
	@Autowired
	private CandidateService candidateService;
	
	@GetMapping
	public String registerCadidate() {
		return "web/registerCandidate";
	}
	
	@PostMapping
	public String register(@RequestParam String name, @RequestParam  String email, @RequestParam String password, @RequestParam String phone, @RequestParam int sex, @RequestParam String birthday, ModelMap map) {
		System.out.println(email);
		CandidateEntity candidateEntity = new CandidateEntity();
		
		if(candidateService.checkRegisterCandidate(email)) {
			ProfileEntity profileEntity = new ProfileEntity();
			candidateEntity.setEmail(email);
			candidateEntity.setPassword(password);
			candidateEntity.setName(name);
			candidateEntity.setPhone(phone);
			candidateEntity.setSex(sex);
			candidateEntity.setProfile(profileEntity);
			
			candidateService.registerCandidate(candidateEntity);
			return "redirect:/dang-nhap";
		}else {
			map.addAttribute("error", "Tài khoản của bạn đã tồn tại vui lòng kiểm tra");
			
		}
		
		return "web/registerCandidate";
		
	}
}

package com.itjob.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itjob.entity.CompanyEntity;
import com.itjob.service.CompanyService;

@Controller
@RequestMapping(path = "/dang-ky-cong-ty")
public class RegisterCompanyController {
	
	@Autowired
	private CompanyService companyService;
	
	@GetMapping
	public String registerCompany() {
		return "web/registerCompany";
	}
	
	
	@PostMapping
	public String register(@RequestParam String name, @RequestParam String email, @RequestParam String password, @RequestParam String address, @RequestParam String phone,ModelMap map) {
		
		if(companyService.checkRegisterCompany(email)) {
			
			CompanyEntity companyEntity = new  CompanyEntity();
			companyEntity.setAddress(address);
			companyEntity.setEmail(email);
			companyEntity.setName(name);
			companyEntity.setPassword(password);
			companyEntity.setPhone(phone);
			companyService.register(companyEntity);
			
			return "redirect:/dang-nhap";
			
		}else {
			map.addAttribute("error", "Tài khoản đã tồn tại");
		}
		
		return "web/registerCompany";
		
		
	}
}

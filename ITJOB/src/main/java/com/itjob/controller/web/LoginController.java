package com.itjob.controller.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itjob.dto.CandidateDTO;
import com.itjob.dto.CompanyDTO;
import com.itjob.service.CandidateService;
import com.itjob.service.CompanyService;

@Controller(value = "loginPageOfWeb")
@RequestMapping(path = "dang-nhap")
public class LoginController {
	
	@Autowired
	private CandidateService candidateService;

	@Autowired
	private CompanyService companyService;

	@GetMapping
	public String login() {
		return "web/login";
	}

	@PostMapping
	public String checkLogin(@RequestParam int role, @RequestParam String email, @RequestParam String password, ModelMap map, HttpSession session) {
		
		if(role == 1) {

			CandidateDTO candidateDTO = candidateService.checkLogin(email, password);
			
			if (candidateDTO != null) {
					
				map.addAttribute("candidate", candidateDTO);
				session.setAttribute("candidate", candidateDTO);
				
				return "redirect:/";
			}else {
				map.addAttribute("errLogin", "Email hoặc mật khẩu không chính xác");
			}
		}
		if(role == 2) {
			CompanyDTO companyDTO = companyService.checkLoginCompany(email, password);
			if(companyDTO != null) {
				map.addAttribute("company", companyDTO);
				session.setAttribute("company", companyDTO);
				
				return "redirect:/";
			}else {
				map.addAttribute("errLogin", "Email hoặc mật khẩu không chính xác");
			}
		}

		return "web/login";

	}

}

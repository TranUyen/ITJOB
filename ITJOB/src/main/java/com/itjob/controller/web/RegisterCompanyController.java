package com.itjob.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path = "/dang-ky-cong-ty")
public class RegisterCompanyController {
	
	@GetMapping
	public String RegisterCompany() {
		return "web/registerCompany";
	}
}

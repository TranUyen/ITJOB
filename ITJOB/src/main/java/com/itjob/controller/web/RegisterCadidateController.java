package com.itjob.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path = "/dang-ky-ung-vien")
public class RegisterCadidateController {
	
	@GetMapping
	public String RegisterCadidate() {
		return "web/registerCandidate";
	}
}

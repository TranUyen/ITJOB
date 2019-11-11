package com.itjob.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path = "dang-nhap")
public class LoginController {
	@GetMapping
	public String Login() {
		return "web/login";
	}
}

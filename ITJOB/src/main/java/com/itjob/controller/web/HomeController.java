package com.itjob.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path = {"/","trang-chu"})
public class HomeController {
	@GetMapping
	public String Home() {
		return "web/Home";
	}
}

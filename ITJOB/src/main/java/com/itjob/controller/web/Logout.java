package com.itjob.controller.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path = "/dang-xuat")
public class Logout {
	
		@GetMapping
		public String logout(HttpSession session) {
			session.removeAttribute("candidate");
			session.removeAttribute("company");
			return "redirect:/";
		}
}

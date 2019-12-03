package com.itjob.controller.web;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itjob.dto.PostDTO;
import com.itjob.service.PostService;

@Controller(value = "homePageOfWeb")
@RequestMapping(path = {"/","trang-chu"})
public class HomeController {
	
	@Autowired
	private PostService postService;
	
	@GetMapping
	public String Home(ModelMap map) {
		map.addAttribute("listposts", postService.showListPost());
		ArrayList<PostDTO>  arrayList = postService.showListPost();
		System.out.println(arrayList.get(1).getTypejob());
		return "web/Home";
	}
	
	
}

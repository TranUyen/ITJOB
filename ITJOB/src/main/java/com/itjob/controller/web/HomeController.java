package com.itjob.controller.web;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itjob.dto.PostDTO;
import com.itjob.entity.PostEntity;
import com.itjob.service.PostService;

@Controller
@RequestMapping(path = {"/","trang-chu"})
public class HomeController {
	
	@Autowired
	private PostService postService;
	
	@GetMapping
	public String pageHome() {
		return "web/Home";
	}
	
	
	@GetMapping(path = "/lists" , produces = "application/json")
	@ResponseBody
	public ArrayList<PostEntity> Home(ModelMap map, HttpSession session) {
		
		ArrayList<PostEntity> listposts =  postService.showListPost();
		
		return listposts ;
	}
	
	
}

package com.itjob.controller.web;

import java.util.ArrayList;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itjob.dto.CompanyDTO;
import com.itjob.entity.CompanyEntity;
import com.itjob.entity.PostEntity;
import com.itjob.service.PostService;

@Controller
@RequestMapping(path = "trang-chu-cong-ty/cong-ty")
public class ProfileCompany {
	
	@Autowired
	private PostService postService;
	
	@GetMapping
	public String profileCompany(HttpSession session, ModelMap map) {
		
		CompanyDTO companyDTO = (CompanyDTO) session.getAttribute("company");
		if(companyDTO == null) {
			return "404";
		}else {
			//Set<PostEntity> listpost =  companyDTO.getListpost();
			//System.out.println(listpost.);
			System.out.println(companyDTO.getEmail());
			System.out.println(companyDTO.getListpost());
			map.addAttribute("listpost", companyDTO.getListpost());
			
			return "web/profile_company";
		}
		
		
	}
	
	
}

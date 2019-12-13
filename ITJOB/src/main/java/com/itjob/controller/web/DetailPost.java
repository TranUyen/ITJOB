package com.itjob.controller.web;

import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itjob.dto.CandidateDTO;
import com.itjob.dto.PostDTO;
import com.itjob.dto.Post_ProfileDTO;
import com.itjob.dto.ProfileDTO;
import com.itjob.entity.Post_ProfileEntity;
import com.itjob.service.PostService;
import com.itjob.service.Post_ProfileService;

@Controller
@RequestMapping(path = "chi-tiet-bai-dang")
public class DetailPost {
	
	@Autowired
	private PostService postService;
	
	
	@Autowired
	private Post_ProfileService post_profileService;
	
	@GetMapping("/{id}")
	public String DetailPost(@PathVariable int id,ModelMap map, HttpSession session) {
		PostDTO postDTO = postService.detailPost(id);
		map.addAttribute("post", postService.detailPost(id));
		
		return "web/detailpost";
	}
	
	@GetMapping("/{id}/ung-tuyen")
	@ResponseBody
	public String Apply(@PathVariable int id, HttpSession session) {
		
		CandidateDTO candidateDTO = (CandidateDTO) session.getAttribute("candidate");
		
		Post_ProfileDTO post_ProfileDTO = new Post_ProfileDTO();
		PostDTO postDTO = postService.detailPost(id);
		post_ProfileDTO.setPostDTO(postDTO);
		
		ProfileDTO profileDTO = candidateDTO.getProfileDTO();
		post_ProfileDTO.setProfileDTO(profileDTO);
		post_ProfileDTO.setTime(java.time.LocalDate.now().toString());
		
		if(post_profileService.AddPost_ProfileEntity(post_ProfileDTO)) {
			return "OK";
		}else {
			return "error";
		}
		
		
		
	}
	
	@GetMapping(path = "/{id}/danh-sach-ung-tuyen")
	public String listCandidate(@PathVariable int id) {
		PostDTO postDTO = postService.detailPost(id);
		Set<Post_ProfileEntity> list = postDTO.getList();
		for (Post_ProfileEntity post_profile : list) {
			System.out.println(post_profile.getProfileEntity().getListProfile());
		}
		return "web/listcompany_post";
		
	}
}

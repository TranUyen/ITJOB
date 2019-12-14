package com.itjob.controller.web;

import java.util.ArrayList;
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
import com.itjob.dto.CompanyDTO;
import com.itjob.dto.PostDTO;
import com.itjob.dto.Post_ProfileDTO;
import com.itjob.dto.ProfileDTO;
import com.itjob.entity.CandidateEntity;
import com.itjob.entity.PostEntity;
import com.itjob.entity.Post_ProfileEntity;
import com.itjob.service.CampanyService;
import com.itjob.service.PostService;
import com.itjob.service.Post_ProfileService;
import com.itjob.utils.DateString;

@Controller
@RequestMapping(path = "chi-tiet-bai-dang")
public class DetailPost {

	@Autowired
	private PostService postService;

	@Autowired
	private Post_ProfileService post_profileService;

	@GetMapping("/{id}")
	public String DetailPost(@PathVariable int id, ModelMap map) {
		PostDTO postDTO = postService.detailPost(id);
		map.addAttribute("post", postService.detailPost(id));
		System.out.println(postDTO.getCompanyDTO().getName());
		return "web/detailpost";
	}

	@GetMapping("/{id}/ung-tuyen")
	@ResponseBody
	public String Apply(@PathVariable int id, HttpSession session) {

		CandidateDTO candidateDTO = (CandidateDTO) session.getAttribute("candidate");
		if(candidateDTO == null) {
			return "null";
		}
		Post_ProfileDTO post_ProfileDTO = new Post_ProfileDTO();
		PostDTO postDTO = postService.detailPost(id);
		post_ProfileDTO.setPostDTO(postDTO);

		ProfileDTO profileDTO = candidateDTO.getProfileDTO();
		post_ProfileDTO.setProfileDTO(profileDTO);
		post_ProfileDTO.setTime(java.time.LocalDate.now().toString());

		if (post_profileService.AddPost_ProfileEntity(post_ProfileDTO)) {
			DateString.SendEmail(postDTO.getContactDTO().getEmail(),postDTO.getPosition());
			return "OK";
		} else {
			return "error";
		}

	}

	@GetMapping(path = "/{id}/danh-sach-ung-tuyen")
	public String listCandidate(@PathVariable int id, ModelMap map, HttpSession session) {
		CompanyDTO companyDTO = (CompanyDTO) session.getAttribute("company");
		if (companyDTO == null) {
			return "redirect:/dang-nhap";
		} else {
			PostDTO postDTO = postService.detailPost(id);
			Set<Post_ProfileEntity> list = postDTO.getList();
			ArrayList<CandidateEntity> listCandidate = new ArrayList<CandidateEntity>();
			for (Post_ProfileEntity post_profile : list) {
				Set<CandidateEntity> candidates = post_profile.getProfileEntity().getListCandidateEntities();
				//PostEntity postEntity = post_profile.getPostEntity();
				for (CandidateEntity candidateEntity : candidates) {
					listCandidate.add(candidateEntity);
				}
			}
			map.addAttribute("post", postDTO);
			map.addAttribute("list", list);
			map.addAttribute("listCandidate", listCandidate);
			return "web/listcompany_post";
		}
	}
}

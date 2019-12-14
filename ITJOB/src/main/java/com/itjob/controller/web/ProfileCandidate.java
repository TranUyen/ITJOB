package com.itjob.controller.web;

import java.util.ArrayList;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itjob.dto.CandidateDTO;
import com.itjob.entity.CandidateEntity;
import com.itjob.entity.PostEntity;
import com.itjob.entity.Post_ProfileEntity;
import com.itjob.service.CandidateService;

@Controller
@RequestMapping(path = "cac-bai-ung-tuyen")
public class ProfileCandidate {
	
	@Autowired
	private CandidateService candidateSevice;
	
	@GetMapping
	public String pageListPost(HttpSession session, ModelMap map) {
		CandidateDTO candidate = (CandidateDTO) session.getAttribute("candidate");
		if(candidate == null) {
			return "web/login";
		}else {
			CandidateDTO candidateDTO = candidateSevice.checkLogin(candidate.getEmail(), candidate.getPassword());
			Set<Post_ProfileEntity> list =  candidateDTO.getProfileDTO().getListPost();
			ArrayList<PostEntity> listpost = new ArrayList<PostEntity>();
			for (Post_ProfileEntity post_ProfileEntity : list) {
				listpost.add(post_ProfileEntity.getPostEntity());
			}
			map.addAttribute("listpost", listpost);
			return "web/listpost_candidate";
		}
		
	}
}

package com.itjob.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itjob.entity.CandidateEntity;
import com.itjob.service.CandidateService;

@Controller
@RequestMapping(path = "chi-tiet-ung-vien")
public class DetailCandidate {

	@Autowired
	public CandidateService candidate;
	
	@GetMapping(path = "/{id}")
	public String pageDetailCadidate(@PathVariable int id, ModelMap map) {
		CandidateEntity candidateEntity = candidate.infoCandidate(id);
		System.out.println(candidateEntity);
		map.addAttribute("candidateEntity",candidateEntity );
		return "web/detail_candidate";
	}
}

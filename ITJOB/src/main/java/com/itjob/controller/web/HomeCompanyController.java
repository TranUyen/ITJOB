package com.itjob.controller.web;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itjob.dto.CompanyDTO;
import com.itjob.entity.CandidateEntity;
import com.itjob.service.CandidateService;

@Controller
@RequestMapping(path = { "trang-chu-cong-ty" })
public class HomeCompanyController {

	@Autowired
	private CandidateService candidateService;

	@GetMapping
	public String pageHomeCompany(HttpSession session) {
		CompanyDTO companyDTO = (CompanyDTO) session.getAttribute("company");
		if (companyDTO == null) {
			return "redirect:/dang-nhap";
		}
		return "web/home_company";
	}

	@GetMapping(path = "/listcadidate")
	@ResponseBody
	public ArrayList<CandidateEntity> listCandidate() {
		return candidateService.listCandidate();
	}

	
	
}

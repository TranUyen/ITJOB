package com.itjob.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itjob.dao.CadidateDAO;
import com.itjob.dto.CandidateDTO;
import com.itjob.dto.ProfileDTO;
import com.itjob.entity.CandidateEntity;
import com.itjob.service.CandidateService;

@Service
public class CandidateServiceImpl implements CandidateService{
	@Autowired
	private CadidateDAO cadidateDAO;
	
	@Override
	public CandidateDTO checkLogin(String email, String password) {
		CandidateDTO candidateDTO = new CandidateDTO();
		CandidateEntity candidateEntity = cadidateDAO.checkLogin(email, password);
		if(candidateEntity == null) {
			candidateDTO = null;
		}else {
			candidateDTO.setEmail(candidateEntity.getEmail());
			candidateDTO.setId(candidateEntity.getId());
			candidateDTO.setName(candidateEntity.getName());
			candidateDTO.setPassword(candidateEntity.getPassword());
			candidateDTO.setPhone(candidateEntity.getPhone());
			ProfileDTO dto = new ProfileDTO();
			dto = profileCandidate(candidateEntity);
			candidateDTO.setProfileDTO(dto);
			candidateDTO.setSex(candidateEntity.getSex());
			
			
		}
		return candidateDTO;
		
	}
	
	private ProfileDTO profileCandidate(CandidateEntity candidateEntity) {
		ProfileDTO dto = new ProfileDTO();
		dto.setDegree(candidateEntity.getProfile().getDegree());
		dto.setExperience_years(candidateEntity.getProfile().getExperience_years());
		dto.setId(candidateEntity.getProfile().getId());
		dto.setProject(candidateEntity.getProfile().getProject());
		dto.setTechnology_skill(candidateEntity.getProfile().getTechnology_skill());
		dto.setOther_skill(candidateEntity.getProfile().getOther_skill());
		dto.setListPost(candidateEntity.getProfile().getListPost_ProfileEntities());
		return dto;
	}

	@Override
	public boolean checkRegisterCandidate(String email) {
		return cadidateDAO.checkRegisterCandidate(email);
	}

	@Override
	public boolean registerCandidate(CandidateEntity candidateEntity) {
		return cadidateDAO.registerCandidate(candidateEntity);
	}
	
	@Override
	public ArrayList<CandidateEntity> listCandidate() {
		return cadidateDAO.listCandidate();
	}
	
	@Override
	public CandidateEntity infoCandidate(int id) {
		
		return cadidateDAO.infoCandidate(id);
	}
}

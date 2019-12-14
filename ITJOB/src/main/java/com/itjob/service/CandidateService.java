package com.itjob.service;

import java.util.ArrayList;

import com.itjob.dto.CandidateDTO;
import com.itjob.entity.CandidateEntity;

public interface CandidateService {
	
	public CandidateDTO checkLogin(String email, String password);

	public boolean checkRegisterCandidate(String email);

	public boolean registerCandidate(CandidateEntity candidateEntity);

	public ArrayList<CandidateEntity> listCandidate();
	
	public CandidateEntity infoCandidate(int id);
}

package com.itjob.service;

import com.itjob.dto.CandidateDTO;

public interface CandidateService {
	public CandidateDTO checkLogin(String email, String password);
}

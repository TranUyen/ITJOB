package com.itjob.dao;

import java.util.ArrayList;

import com.itjob.entity.CandidateEntity;

public interface CadidateDAO {

	public CandidateEntity checkLogin(String email, String password);

	public boolean checkRegisterCandidate(String email);

	public boolean registerCandidate(CandidateEntity candidateEntity);
	
	public ArrayList<CandidateEntity> listCandidate();

}

package com.itjob.dao;

import com.itjob.entity.CandidateEntity;

public interface CadidateDAO {
	public CandidateEntity checkLogin(String email, String password);
}

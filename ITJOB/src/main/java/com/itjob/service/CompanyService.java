package com.itjob.service;

import com.itjob.dto.CompanyDTO;
import com.itjob.entity.CompanyEntity;

public interface CompanyService {
	public CompanyDTO checkLoginCompany(String email, String password);
	public boolean checkRegisterCompany(String email);
	public boolean register(CompanyEntity companyEntity);
}

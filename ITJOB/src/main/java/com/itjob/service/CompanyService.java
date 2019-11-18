package com.itjob.service;

import com.itjob.dto.CompanyDTO;

public interface CompanyService {
	public CompanyDTO checkLoginCompany(String email, String password);
}

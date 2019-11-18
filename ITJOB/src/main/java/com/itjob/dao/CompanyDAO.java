package com.itjob.dao;

import com.itjob.entity.CompanyEntity;

public interface CompanyDAO {
	
	public CompanyEntity checkLoginCompany(String email, String password);
}

package com.itjob.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itjob.dao.CompanyDAO;
import com.itjob.dto.CompanyDTO;
import com.itjob.entity.CompanyEntity;
import com.itjob.service.CompanyService;

@Service
public class CompanyServiceImpl implements CompanyService{
	@Autowired
	private CompanyDAO companyDAO;
	
	@Override
	public CompanyDTO checkLoginCompany(String email, String password) {
		CompanyEntity company = companyDAO.checkLoginCompany(email, password);
		
		if(company == null) {
			return null;
		}else {
			System.out.println(company);
			System.out.println(company.getListpost());
			CompanyDTO companyDTO = new CompanyDTO();
			companyDTO.setId(company.getId());
			companyDTO.setName(company.getName());
			companyDTO.setEmail(company.getEmail());
			companyDTO.setPassword(company.getPassword());
			companyDTO.setAddress(company.getAddress());
			companyDTO.setPhone(company.getPhone());
			companyDTO.setListpost(company.getListpost());
			return companyDTO;
		}
		
	}

	@Override
	public boolean checkRegisterCompany(String email) {
		return companyDAO.checkRegisterCompany(email);
	}

	@Override
	public boolean register(CompanyEntity companyEntity) {
		
		return companyDAO.register(companyEntity);
	}

}

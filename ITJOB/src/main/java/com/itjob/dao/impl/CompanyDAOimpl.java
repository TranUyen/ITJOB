package com.itjob.dao.impl;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.itjob.dao.CompanyDAO;
import com.itjob.entity.CompanyEntity;

@Repository
@Transactional
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CompanyDAOimpl implements CompanyDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public CompanyEntity checkLoginCompany(String email, String password) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from CompanyEntity where email = :email and password =: password";
		try {
			return (CompanyEntity) session.createQuery(hql).setParameter("email", email).setParameter("password",
					password).getSingleResult();
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}
	
	@Override
	public boolean checkRegisterCompany(String email) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from CompanyEntity where email = :email";
		try {
			CompanyEntity companyEntity = (CompanyEntity) session.createQuery(hql).setParameter("email", email).getSingleResult();
			return false;
		} catch (Exception e) {
			e.printStackTrace();
			return true;
		}
	}
	
	@Override
	public boolean register(CompanyEntity companyEntity) {
		Session session = sessionFactory.getCurrentSession();
		try {
			session.save(companyEntity);
			return true;
		} catch (Exception e) {
			return false;
		}
		
	}

}

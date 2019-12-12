package com.itjob.dao.impl;

import java.util.ArrayList;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.itjob.dao.CadidateDAO;
import com.itjob.entity.CandidateEntity;

@Repository
@Transactional
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CadidateDAOimpl implements CadidateDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public CandidateEntity checkLogin(String email, String password) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from CandidateEntity where email= :email and password = :password";
		
		try {
			 return (CandidateEntity) session.createQuery(hql).setParameter("email", email).setParameter("password", password).getSingleResult();
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
		
	}

	@Override
	public boolean checkRegisterCandidate(String email) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from CandidateEntity where email= :email";
		
		try {
			 CandidateEntity candidateEntity = (CandidateEntity) session.createQuery(hql).setParameter("email", email).getSingleResult();
			 return false;
			
		} catch (Exception e) {
			//e.printStackTrace();
			return true;
		}
	}

	@Override
	public boolean registerCandidate(CandidateEntity candidateEntity) {
		Session session = sessionFactory.getCurrentSession();
		try {
			session.save(candidateEntity);
			return true;
		} catch (Exception e) {
			return false;
		}
		
		
	}
	
	@Override
	public ArrayList<CandidateEntity> listCandidate() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from CandidateEntity";
		
		try {
			 ArrayList<CandidateEntity> candidateEntity = (ArrayList<CandidateEntity>) session.createQuery(hql).getResultList();
			 return candidateEntity;
			
		} catch (Exception e) {
			
			return null;
		}
	}
	
	

}

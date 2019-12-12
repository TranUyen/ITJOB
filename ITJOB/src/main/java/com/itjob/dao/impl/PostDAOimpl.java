package com.itjob.dao.impl;

import java.util.ArrayList;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.itjob.dao.PostDAO;
import com.itjob.entity.CompanyEntity;
import com.itjob.entity.PostEntity;

@Repository
@Transactional

@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class PostDAOimpl implements PostDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean addPost(PostEntity postEntity) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(postEntity);

		return true; 
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<PostEntity> showListPost() {
		Session session = this.sessionFactory.getCurrentSession();
		try {
			return (ArrayList<PostEntity>) session.createQuery("from PostEntity").getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
		
	}
	
	
	@Override
	public PostEntity detailPost(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		try {
			
			return (PostEntity) session.createQuery("from PostEntity where id=:id").setParameter("id", id).getSingleResult();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<PostEntity> listPostOfCompany(int idCompany) {
		Session session = sessionFactory.getCurrentSession();
		try {
			CompanyEntity companyEntity = (CompanyEntity) session.createQuery("from CompanyEntity where id=:id").setParameter("id", idCompany).getSingleResult();
			return (ArrayList<PostEntity>) session.createQuery("from PostEntity where CompanyEntity =:companyEntity").setParameter("companyEntity", companyEntity).getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}

}

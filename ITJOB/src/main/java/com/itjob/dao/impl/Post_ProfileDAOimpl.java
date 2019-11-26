package com.itjob.dao.impl;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.itjob.dao.Post_ProfileDAO;
import com.itjob.entity.Post_ProfileEntity;

@Repository
@Transactional

@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class Post_ProfileDAOimpl implements Post_ProfileDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean addPost_Profile(Post_ProfileEntity post_ProfileEntity) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(post_ProfileEntity);

		return true; 
		
	}
}

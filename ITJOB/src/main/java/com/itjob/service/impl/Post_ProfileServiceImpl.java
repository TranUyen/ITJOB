package com.itjob.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itjob.dao.Post_ProfileDAO;
import com.itjob.dto.Post_ProfileDTO;
import com.itjob.entity.PostEntity;
import com.itjob.entity.Post_ProfileEntity;
import com.itjob.entity.ProfileEntity;
import com.itjob.service.Post_ProfileService;

@Service
public class Post_ProfileServiceImpl implements Post_ProfileService {
	
	@Autowired
	private Post_ProfileDAO post_ProfileDAO;
	
	@Override 
	public boolean AddPost_ProfileEntity(Post_ProfileDTO post_ProfileDTO) {
		Post_ProfileEntity post_ProfileEntity = new Post_ProfileEntity();
		PostEntity postEntity = PostServiceImpl.convertDTOtoEntity(post_ProfileDTO.getPostDTO());
		post_ProfileEntity.setPostEntity(postEntity);
		
		ProfileEntity profileEntity = new ProfileEntity();
		profileEntity.setId(post_ProfileDTO.getProfileDTO().getId());
		profileEntity.setDegree(post_ProfileDTO.getProfileDTO().getDegree());
		profileEntity.setExperience_years(post_ProfileDTO.getProfileDTO().getExperience_years());
		profileEntity.setOther_skill(post_ProfileDTO.getProfileDTO().getOther_skill());
		profileEntity.setProject(post_ProfileDTO.getProfileDTO().getProject());
		profileEntity.setTechnology_skill(post_ProfileDTO.getProfileDTO().getTechnology_skill());
		
		post_ProfileEntity.setProfileEntity(profileEntity);
		post_ProfileEntity.setTime(post_ProfileDTO.getTime());
		if(post_ProfileDAO.addPost_Profile(post_ProfileEntity)) {
			return true;
		}else{
				return false;
			}
	}
	
	
}

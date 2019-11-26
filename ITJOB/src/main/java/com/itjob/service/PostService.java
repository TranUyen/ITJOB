package com.itjob.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.itjob.dto.PostDTO;
import com.itjob.entity.PostEntity;

@Service
public interface PostService {
	
	public boolean addPost(PostDTO postDTO);
	
	public ArrayList<PostDTO> showListPost();

	public PostDTO detailPost(int id);
}

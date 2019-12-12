package com.itjob.dao;

import java.util.ArrayList;

import com.itjob.entity.PostEntity;

public interface PostDAO {
	public boolean addPost(PostEntity postEntity);
	public ArrayList<PostEntity> showListPost();
	public PostEntity detailPost(int id);
	public ArrayList<PostEntity> listPostOfCompany(int idCompany);
}

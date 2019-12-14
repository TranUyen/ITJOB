package com.itjob.dto;

import java.util.Set;

import com.itjob.entity.Post_ProfileEntity;

public class ProfileDTO {
	private int id;
	private String degree;
	private String experience_years;
	private String technology_skill;
	private String project;
	private String other_skill;
	private Set<Post_ProfileEntity> listPost;

	public Set<Post_ProfileEntity> getListPost() {
		return listPost;
	}
	
	public void setListPost(Set<Post_ProfileEntity> listPost) {
		this.listPost = listPost;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getExperience_years() {
		return experience_years;
	}

	public void setExperience_years(String experience_years) {
		this.experience_years = experience_years;
	}

	public String getTechnology_skill() {
		return technology_skill;
	}

	public void setTechnology_skill(String technology_skill) {
		this.technology_skill = technology_skill;
	}

	public String getProject() {
		return project;
	}

	public void setProject(String project) {
		this.project = project;
	}

	public String getOther_skill() {
		return other_skill;
	}

	public void setOther_skill(String other_skill) {
		this.other_skill = other_skill;
	}

}

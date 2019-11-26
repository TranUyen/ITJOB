package com.itjob.dto;

public class RequirementDTO {
	private int id;
	private String technology_skill;
	private String experience;
	private String degree;
	
	public RequirementDTO(String technology_skill, String experience, String degree) {
		this.degree = degree;
		this.experience = experience;
		this.technology_skill = technology_skill;
	}
	
	public RequirementDTO() {
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTechnology_skill() {
		return technology_skill;
	}
	public void setTechnology_skill(String technology_skill) {
		this.technology_skill = technology_skill;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	
	
}

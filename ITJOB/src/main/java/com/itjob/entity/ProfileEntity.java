package com.itjob.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.mapping.Set;

@Entity
@Table(name = "profiles")
public class ProfileEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String id;
	private String birthday;
	private String degree;
	private String experience_years;
	private String salary;
	private String technology_skill;
	private String project;
	private String type_work;
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
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
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
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
	public String getType_work() {
		return type_work;
	}
	public void setType_work(String type_work) {
		this.type_work = type_work;
	}
	
	
	
	
	
}

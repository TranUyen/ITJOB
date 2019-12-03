package com.itjob.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.hibernate.mapping.Set;

@Entity
@Table(name = "profiles")
public class ProfileEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String degree;
	private String experience_years;
	private String technology_skill;
	private String project;
	private String other_skill;

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

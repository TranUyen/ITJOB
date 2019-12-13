package com.itjob.dto;

import java.util.Set;

import com.itjob.entity.CompanyEntity;
import com.itjob.entity.ContactEntity;
import com.itjob.entity.Post_ProfileEntity;
import com.itjob.entity.RequirementEntity;

public class PostDTO {
	private int id;
	private String time;
	private String position;
	private int no_member;
	private String benefit;
	private String JD;
	private String province;
	private String salary;
	private String typejob;
	private CompanyDTO companyDTO;
	private RequirementDTO requirementDTO;
	private ContactDTO contactDTO;
	private String other_requirements;
	private Set<Post_ProfileEntity> list;
	
	
	public Set<Post_ProfileEntity> getList() {
		return list;
	}
	
	public void setList(Set<Post_ProfileEntity> list) {
		this.list = list;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public int getNo_member() {
		return no_member;
	}

	public void setNo_member(int no_member) {
		this.no_member = no_member;
	}

	public String getBenefit() {
		return benefit;
	}

	public void setBenefit(String benefit) {
		this.benefit = benefit;
	}

	public String getJD() {
		return JD;
	}

	public void setJD(String jD) {
		JD = jD;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public CompanyDTO getCompanyDTO() {
		return companyDTO;
	}

	public void setCompanyDTO(CompanyDTO companyDTO) {
		this.companyDTO = companyDTO;
	}

	public ContactDTO getContactDTO() {
		return contactDTO;
	}

	public void setContactDTO(ContactDTO contactDTO) {
		this.contactDTO = contactDTO;
	}

	public RequirementDTO getRequirementDTO() {
		return requirementDTO;
	}

	public void setRequirementDTO(RequirementDTO requirementDTO) {
		this.requirementDTO = requirementDTO;
	}
	
	public String getSalary() {
		return salary;
	}
	
	public void setSalary(String salary) {
		this.salary = salary;
	}
	
	public String getTypejob() {
		return typejob;
	}
	
	public void setTypejob(String typejob) {
		this.typejob = typejob;
	}
	
	public String getOther_requirements() {
		return other_requirements;
	}
	
	public void setOther_requirements(String other_requirements) {
		this.other_requirements = other_requirements;
	}
}

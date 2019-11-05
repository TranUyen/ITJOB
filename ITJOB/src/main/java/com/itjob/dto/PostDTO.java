package com.itjob.dto;

import com.itjob.entity.CompanyEntity;
import com.itjob.entity.ContactEntity;
import com.itjob.entity.RequirementEntity;

public class PostDTO {
	private int id;
	private String time;
	private String position;
	private String no_member;
	private String benefit;
	private String JD;
	private String deadline;
	private String province;
	private String district;
	private CompanyDTO companyDTO;
	private RequirementDTO requirementDTO;
	private ContactDTO contactDTO;
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
	public String getNo_member() {
		return no_member;
	}
	public void setNo_member(String no_member) {
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
	public String getDeadline() {
		return deadline;
	}
	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
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
	
	
}

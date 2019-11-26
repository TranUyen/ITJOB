package com.itjob.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.web.bind.annotation.GetMapping;

@Entity
@Table(name = "posts")
public class PostEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String time;
	private String position;
	private int no_member;
	private String benefit;
	private String JD;
	private String province;
	private String salary;
	private String typejob;
	private String other_requirements;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_companies")
	private CompanyEntity companyEntity;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_requirement")
	private RequirementEntity requirementEntity;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_contact")
	private ContactEntity contactEntity;

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

	public CompanyEntity getCompanyEntity() {
		return companyEntity;
	}

	public void setCompanyEntity(CompanyEntity companyEntity) {
		this.companyEntity = companyEntity;
	}

	public RequirementEntity getRequirementEntity() {
		return requirementEntity;
	}

	public void setRequirementEntity(RequirementEntity requirementEntity) {
		this.requirementEntity = requirementEntity;
	}

	public ContactEntity getContactEntity() {
		return contactEntity;
	}

	public void setContactEntity(ContactEntity contactEntity) {
		this.contactEntity = contactEntity;
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

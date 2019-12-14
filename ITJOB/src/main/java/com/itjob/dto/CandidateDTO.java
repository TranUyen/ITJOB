package com.itjob.dto;

public class CandidateDTO {
	private int id;
	private String name;
	private String email;
	private String phone;
	private String password;
	private int sex;
	private ProfileDTO profileDTO;
	//private Set<Post_ProfileEntity> Post_ProfileEntity;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	
	public ProfileDTO getProfileDTO() {
		return profileDTO;
	}
	
	public void setProfileDTO(ProfileDTO profileDTO) {
		this.profileDTO = profileDTO;
	}
	
	
	
}

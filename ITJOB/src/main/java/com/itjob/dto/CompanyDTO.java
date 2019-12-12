package com.itjob.dto;

import java.util.ArrayList;
import java.util.Set;

import com.itjob.entity.PostEntity;

public class CompanyDTO {

	private int id;
	private String name;
	private String address;
	private String phone;
	private String email;
	private String password;
	private Set<PostEntity> listpost;
	
	public CompanyDTO(int id, String name, String address, String phone, String email, String password) {
		this.address = address;
		this.email = email;
		this.id = id;
		this.name = name;
		this.password = password;
	}
	
	
	public CompanyDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public Set<PostEntity> getListpost() {
		return listpost;
	}
	
	public void setListpost(Set<PostEntity> listpost) {
		this.listpost = listpost;
	}
	
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	
}

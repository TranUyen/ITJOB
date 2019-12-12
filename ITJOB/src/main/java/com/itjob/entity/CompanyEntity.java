package com.itjob.entity;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "companies")
public class CompanyEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String address;
	private String phone;
	private String email;
	private String password;
	
	@OneToMany(mappedBy = "id",cascade = CascadeType.ALL,fetch = FetchType.EAGER, orphanRemoval = true)
	private Set<PostEntity> listpost = new HashSet<PostEntity>();
	
	public CompanyEntity(int id, String name, String address, String phone, String email, String password) {
		this.address = address;
		this.email = email;
		this.id = id;
		this.name = name;
		this.password = password;
	}
	
	public Set<PostEntity> getListpost() {
		return listpost;
	}
	
	public void setListpost(Set<PostEntity> listpost) {
		this.listpost = listpost;
	}
	
	public CompanyEntity() {
		// TODO Auto-generated constructor stub
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
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
	

}

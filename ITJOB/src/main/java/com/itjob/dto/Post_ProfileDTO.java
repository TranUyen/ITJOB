package com.itjob.dto;

public class Post_ProfileDTO {
	private int id;
	private String time;
	
	private PostDTO postDTO;
	private ProfileDTO profileDTO;
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
	public PostDTO getPostDTO() {
		return postDTO;
	}
	public void setPostDTO(PostDTO postDTO) {
		this.postDTO = postDTO;
	}
	public ProfileDTO getProfileDTO() {
		return profileDTO;
	}
	public void setProfileDTO(ProfileDTO profileDTO) {
		this.profileDTO = profileDTO;
	}
	
	
	
}

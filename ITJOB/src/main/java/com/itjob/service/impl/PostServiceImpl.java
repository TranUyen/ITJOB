package com.itjob.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itjob.dao.PostDAO;
import com.itjob.dto.CompanyDTO;
import com.itjob.dto.ContactDTO;
import com.itjob.dto.PostDTO;
import com.itjob.dto.RequirementDTO;
import com.itjob.entity.CompanyEntity;
import com.itjob.entity.ContactEntity;
import com.itjob.entity.PostEntity;
import com.itjob.entity.RequirementEntity;
import com.itjob.service.PostService;

@Service
public class PostServiceImpl implements PostService {

	@Autowired
	private PostDAO PostDAO;

	@Override
	public boolean addPost(PostDTO postDTO) {
		PostEntity postEntity = convertDTOtoEntity(postDTO);
		
		if(PostDAO.addPost(postEntity)) {
			return true;
		} else {
			return false;
		}
	}
	
	@Override
	public ArrayList<PostEntity> showListPost() {
		//ArrayList<PostDTO> postDTOs = new ArrayList<PostDTO>();
		ArrayList<PostEntity> arrayList = PostDAO.showListPost();
		
		return arrayList;
	}
	
	@Override
	public PostDTO detailPost(int id) {
		//System.out.println(PostDAO.detailPost(id).getCompanyEntity().getName());
		PostDTO postDTO = convertEntityToDTO(PostDAO.detailPost(id));
				
		return postDTO;
	}
	
	
	
	
	public static PostDTO convertEntityToDTO(PostEntity postEntity) {
		PostDTO postDTO = new PostDTO();
		CompanyDTO companyDTO = new CompanyDTO(postEntity.getCompanyEntity().getId(),  postEntity.getCompanyEntity().getName(), postEntity.getCompanyEntity().getAddress(), postEntity.getCompanyEntity().getPhone(), postEntity.getCompanyEntity().getEmail(), null);
		postDTO.setCompanyDTO(companyDTO);
		
		RequirementDTO requirementDTO = new RequirementDTO();
		requirementDTO.setId(postEntity.getRequirementEntity().getId());
		requirementDTO.setTechnology_skill(postEntity.getRequirementEntity().getTechnology_skill());
		requirementDTO.setExperience(postEntity.getRequirementEntity().getExperience());
		requirementDTO.setDegree(postEntity.getRequirementEntity().getDegree());
		postDTO.setRequirementDTO(requirementDTO);
		
		ContactDTO contactDTO = new ContactDTO();
		contactDTO.setEmail(postEntity.getContactEntity().getEmail());
		contactDTO.setName(postEntity.getContactEntity().getName());
		contactDTO.setPhone(postEntity.getContactEntity().getPhone());
		contactDTO.setId(postEntity.getContactEntity().getId());
		postDTO.setContactDTO(contactDTO);
		
		postDTO.setBenefit(postEntity.getBenefit());
		postDTO.setId(postEntity.getId());
		postDTO.setJD(postEntity.getJD());
		postDTO.setNo_member(postEntity.getNo_member());
		postDTO.setOther_requirements(postEntity.getOther_requirements());
		postDTO.setPosition(postEntity.getPosition());
		postDTO.setSalary(postEntity.getSalary());
		postDTO.setProvince(postEntity.getProvince());
		postDTO.setTime(postEntity.getTime());
		postDTO.setTypejob(postEntity.getTypejob());
		postDTO.setList(postEntity.getList());
		
		return postDTO;
		
		
	}
	
	public static PostEntity convertDTOtoEntity(PostDTO postDTO) {
		ContactEntity contactEntity = new ContactEntity();
		contactEntity.setEmail(postDTO.getContactDTO().getEmail());
		contactEntity.setName(postDTO.getContactDTO().getName());
		contactEntity.setPhone(postDTO.getContactDTO().getPhone());

		RequirementEntity requirementEntity = new RequirementEntity();
		requirementEntity.setExperience(postDTO.getRequirementDTO().getExperience());
		requirementEntity.setDegree(postDTO.getRequirementDTO().getDegree());
		requirementEntity.setTechnology_skill(postDTO.getRequirementDTO().getTechnology_skill());

		CompanyEntity companyEntity = new CompanyEntity();
		companyEntity.setId(postDTO.getCompanyDTO().getId());
		companyEntity.setAddress(postDTO.getCompanyDTO().getAddress());
		companyEntity.setEmail(postDTO.getCompanyDTO().getEmail());
		companyEntity.setPassword(postDTO.getCompanyDTO().getPassword());
		companyEntity.setPhone(postDTO.getCompanyDTO().getPhone());

		PostEntity postEntity = new PostEntity();
		postEntity.setBenefit(postDTO.getBenefit());
		postEntity.setJD(postDTO.getJD());
		postEntity.setNo_member(postDTO.getNo_member());
		postEntity.setRequirementEntity(requirementEntity);
		postEntity.setCompanyEntity(companyEntity);
		postEntity.setProvince(postDTO.getProvince());
		postEntity.setContactEntity(contactEntity);
		postEntity.setTime(postDTO.getTime());
		postEntity.setPosition(postDTO.getPosition());
		postEntity.setSalary(postDTO.getSalary());
		postEntity.setTypejob(postDTO.getTypejob());
		postEntity.setOther_requirements(postDTO.getOther_requirements());
		
		
		return postEntity;
	}

}

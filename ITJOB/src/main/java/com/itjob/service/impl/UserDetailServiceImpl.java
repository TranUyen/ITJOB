package com.itjob.service.impl;

import com.itjob.constant.SystemConstant;
import com.itjob.dto.UserDTO;
import com.itjob.entity.RoleEntity;
import com.itjob.entity.UserEntity;
import com.itjob.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import java.util.ArrayList;
import java.util.List;

public class UserDetailServiceImpl implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserEntity userEntity = userRepository.findOneByUserNameAndStatus(username, SystemConstant.ACTIVE_STATUS);
        if (userEntity == null) {
            throw new UsernameNotFoundException("User not found!");
        }
        List<GrantedAuthority> authorities = new ArrayList<>();
        for (RoleEntity roleEntity : userEntity.getRoles()) {
            authorities.add(new SimpleGrantedAuthority(roleEntity.getCode()));
        }
        UserDTO userDTO = new UserDTO(
                userEntity.getUserName(),
                userEntity.getPassWord(),
                true,
                true,
                true,
                true,
                authorities);
        userDTO.setFullName(userEntity.getFullName());
        return userDTO;
    }
}

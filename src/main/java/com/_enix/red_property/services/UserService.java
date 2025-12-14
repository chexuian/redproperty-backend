package com._enix.red_property.services;


import com._enix.red_property.dtos.AdminDto;
import com._enix.red_property.dtos.AgencyDto;
import com._enix.red_property.dtos.AgentDto;
import com._enix.red_property.dtos.UserDto;
import com._enix.red_property.entities.Admin;
import com._enix.red_property.entities.Agency;
import com._enix.red_property.entities.Agent;
import com._enix.red_property.entities.User;

import com._enix.red_property.enums.UserRole;
import com._enix.red_property.repositories.AdminRepository;
import com._enix.red_property.repositories.AgentRepository;
import com._enix.red_property.repositories.UserRepository;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import org.apache.coyote.BadRequestException;
import org.springframework.stereotype.Service;

import java.util.UUID;


@Service
@RequiredArgsConstructor
@Slf4j
public class UserService {

    private final UserRepository userRepository;
    private final AdminRepository adminRepository;
    private final AgentRepository agentRepository;
    private final AgencyService agencyService;

    public User getUserById(String id){
        return userRepository.findByIdAndDeletedAtIsNull(id).orElseThrow(
                () -> {
                    log.error("Unable to find the user with id : {}", id);
                    return new RuntimeException("Unable to find the user with id : " + id);
                }
        );
    }

    public UserDto getUserDtoById(String id){
        User user = getUserById(id);

        return UserDto.builder()
                .id(user.getId())
                .name(user.getName())
                .email(user.getEmail())
                .contactNo(user.getContactNo())
                .password(user.getPassword())
                .profilePic(user.getProfilePic())
                .build();
    }

    public Admin getAdminById(String id){
        return adminRepository.findByIdAndDeletedAtIsNull(id).orElseThrow(
                () -> {
                    log.error("Unable to find the user with id : {}", id);
                    return new RuntimeException("Unable to find the user with id : " + id);
                }
        );
    }

    public AdminDto getAdminDtoById(String id){
        Admin admin = getAdminById(id);

        return AdminDto.builder()
                .id(admin.getUser().getId())
                .name(admin.getUser().getName())
                .email(admin.getUser().getEmail())
                .contactNo(admin.getUser().getContactNo())
                .password(admin.getUser().getPassword())
                .profilePic(admin.getUser().getProfilePic())
                .department(admin.getDepartment())
                .build();
    }

    public Agent getAgentById(String id){
        return agentRepository.findByIdAndDeletedAtIsNull(id).orElseThrow(
                () -> {
                    log.error("Unable to find the user with id : {}", id);
                    return new RuntimeException("Unable to find the user with id : " + id);
                }
        );
    }

    public AgentDto getAgentDtoById(String id){
        Agent agent = getAgentById(id);

        return AgentDto.builder()
                .id(agent.getUser().getId())
                .name(agent.getUser().getName())
                .email(agent.getUser().getEmail())
                .contactNo(agent.getUser().getContactNo())
                .password(agent.getUser().getPassword())
                .profilePic(agent.getUser().getProfilePic())
                .agency(agencyService.getAgencyDtoById(agent.getAgency().getId()))
                .licenseNumber(agent.getLicenseNumber())
                .bio(agent.getBio())
                .verified(agent.isVerified())
                .build();
    }

    public UserDto createUser(UserDto userDto) {
        User user = User.builder()
                .name(userDto.getName())
                .email(userDto.getEmail())
                .contactNo(userDto.getContactNo())
                .password(userDto.getPassword())
                .profilePic(userDto.getProfilePic())
                .role(UserRole.USER)
                .build();

        user = userRepository.save(user);

        return UserDto.builder()
                .id(user.getId())
                .name(user.getName())
                .email(user.getEmail())
                .contactNo(user.getContactNo())
                .password(user.getPassword())
                .profilePic(user.getProfilePic())
                .build();
    }

    public AdminDto createAdmin(AdminDto adminDto) {
        Admin admin = Admin.builder()
                .user(User.builder()
                        .name(adminDto.getName())
                        .email(adminDto.getEmail())
                        .contactNo(adminDto.getContactNo())
                        .password(adminDto.getPassword())
                        .profilePic(adminDto.getProfilePic())
                        .role(UserRole.ADMIN)
                        .build())
                .department(adminDto.getDepartment())
                .build();

        admin = adminRepository.save(admin);

        return AdminDto.builder()
                .id(admin.getUser().getId())
                .name(admin.getUser().getName())
                .email(admin.getUser().getEmail())
                .contactNo(admin.getUser().getContactNo())
                .password(admin.getUser().getPassword())
                .profilePic(admin.getUser().getProfilePic())
                .department(admin.getDepartment())
                .build();
    }

    public AgentDto createAgent(AgentDto agentDto) {
        Agency agency = agencyService.getAgencyById(agentDto.getAgency().getId());

        Agent agent = Agent.builder()
                .user(User.builder()
                        .name(agentDto.getName())
                        .email(agentDto.getEmail())
                        .contactNo(agentDto.getContactNo())
                        .password(agentDto.getPassword()) // optionally hash this
                        .profilePic(agentDto.getProfilePic())
                        .role(UserRole.AGENT)
                        .build())
                .agency(agency)
                .licenseNumber(agentDto.getLicenseNumber())
                .bio(agentDto.getBio())
                .verified(agentDto.isVerified())
                .build();

        // Save the agent
        agent = agentRepository.save(agent);

        // Map back to DTO and return
        return AgentDto.builder()
                .id(agent.getUser().getId())
                .name(agent.getUser().getName())
                .email(agent.getUser().getEmail())
                .contactNo(agent.getUser().getContactNo())
                .password(agent.getUser().getPassword())
                .profilePic(agent.getUser().getProfilePic())
                .agency(agencyService.getAgencyDtoById(agent.getAgency().getId()))
                .licenseNumber(agent.getLicenseNumber())
                .bio(agent.getBio())
                .verified(agent.isVerified())
                .build();
    }

    public AgentDto mapAgentToAgentDto(Agent agent) {
        return AgentDto.builder()
                .id(agent.getUser().getId())
                .name(agent.getUser().getName())
                .email(agent.getUser().getEmail())
                .contactNo(agent.getUser().getContactNo())
                .profilePic(agent.getUser().getProfilePic())
                .agency(AgencyDto.builder()
                        .id(agent.getAgency().getId())
                        .name(agent.getAgency().getName())
                        .address(agent.getAgency().getAddress())
                        .city(agent.getAgency().getCity())
                        .state(agent.getAgency().getState())
                        .country(agent.getAgency().getCountry())
                        .contactNo(agent.getAgency().getContactNo())
                        .build())
                .licenseNumber(agent.getLicenseNumber())
                .bio(agent.getBio())
                .verified(agent.isVerified())
                .build();
    }

}

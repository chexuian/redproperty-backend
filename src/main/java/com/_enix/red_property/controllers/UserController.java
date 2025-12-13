package com._enix.red_property.controllers;


import com._enix.red_property.dtos.AdminDto;
import com._enix.red_property.dtos.AgentDto;
import com._enix.red_property.dtos.UserDto;
import com._enix.red_property.services.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/rest/api/v1/users")
@RequiredArgsConstructor
@Slf4j
public class UserController {

    private final UserService userService;

    @GetMapping("/user/{userId}")
    public UserDto getUserById(@PathVariable("userId") String userId){
        return userService.getUserDtoById(userId);
    }

    @GetMapping("/admin/{userId}")
    public AdminDto getAdminById(@PathVariable("userId") String userId){
        return userService.getAdminDtoById(userId);
    }

    @GetMapping("/agent/{userId}")
    public AgentDto getAgentById(@PathVariable("userId") String userId){
        return userService.getAgentDtoById(userId);
    }

//    @GetMapping
//    public Page<UserDto> getAllUsers(Pageable pageable, @RequestParam(value = "q", required = false) String q){
//        return userService.getAllUsers(pageable, q);
//    }

    @PostMapping("/create-user")
    public UserDto createUser(@RequestBody UserDto userDto){
        return userService.createUser(userDto);
    }

    @PostMapping("/create-admin")
    public UserDto createAdmin(@RequestBody AdminDto adminDto){
        return userService.createAdmin(adminDto);
    }

    @PostMapping("/create-agent")
    public AgentDto createAgent(@RequestBody AgentDto agentDto){
        return userService.createAgent(agentDto);
    }

//    @PutMapping
//    public UserDto updateUser(@RequestBody UserDto userDto){
//        return userService.updateUser(userDto);
//    }
//
//    @DeleteMapping("/{userId}")
//    public void deleteUser(@PathVariable("userId") String userId){
//        userService.deleteUser(userId);
//    }
}

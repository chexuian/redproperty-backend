package com._enix.red_property.controllers;


import com._enix.red_property.dtos.AdminDto;
import com._enix.red_property.dtos.AgencyDto;
import com._enix.red_property.dtos.UserDto;
import com._enix.red_property.services.AgencyService;
import com._enix.red_property.services.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/rest/api/v1/agencies")
@RequiredArgsConstructor
@Slf4j
public class AgencyController {

    private final AgencyService agencyService;

    @GetMapping("/{agencyId}")
    public AgencyDto getAgencyById(@PathVariable("agencyId") String agencyId){
        return agencyService.getAgencyDtoById(agencyId);
    }

    @PostMapping
    public AgencyDto createAgency(@RequestBody AgencyDto agencyDto){
        return agencyService.createAgency(agencyDto);
    }
}

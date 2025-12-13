package com._enix.red_property.controllers;


import com._enix.red_property.dtos.AmenityDto;
import com._enix.red_property.dtos.FacilityDto;
import com._enix.red_property.services.AmenityService;
import com._enix.red_property.services.FacilityService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/rest/api/v1/facilities")
@RequiredArgsConstructor
@Slf4j
public class FacilityController {

    private final FacilityService facilityService;

    @GetMapping("/{facilityId}")
    public FacilityDto getFacilityById(@PathVariable("facilityId") String facilityId){
        return facilityService.getFacilityDtoById(facilityId);
    }

    @PostMapping
    public FacilityDto createFacility(@RequestBody FacilityDto facilityDto){
        return facilityService.createFacility(facilityDto);
    }
}

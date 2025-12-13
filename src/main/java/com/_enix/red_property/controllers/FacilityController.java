package com._enix.red_property.controllers;


import com._enix.red_property.dtos.AmenityDto;
import com._enix.red_property.dtos.FacilityDto;
import com._enix.red_property.services.AmenityService;
import com._enix.red_property.services.FacilityService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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

    @GetMapping
    public Page<FacilityDto> getAllFacilities(Pageable pageable, @RequestParam(value = "q", required = false) String q){
        return facilityService.getAllFacilities(pageable, q);
    }

    @PostMapping
    public FacilityDto createFacility(@RequestBody FacilityDto facilityDto){
        return facilityService.createFacility(facilityDto);
    }

    @PutMapping
    public FacilityDto updateFacility(@RequestBody FacilityDto facilityDto){
        return facilityService.updateFacility(facilityDto);
    }

    @DeleteMapping("/{facilityId}")
    public void deleteFacilityById(@PathVariable("facilityId") String facilityId){
        facilityService.deleteFacility(facilityId);
    }
}

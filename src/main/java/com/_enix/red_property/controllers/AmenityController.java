package com._enix.red_property.controllers;


import com._enix.red_property.dtos.AgencyDto;
import com._enix.red_property.dtos.AmenityDto;
import com._enix.red_property.services.AgencyService;
import com._enix.red_property.services.AmenityService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/rest/api/v1/amenities")
@RequiredArgsConstructor
@Slf4j
public class AmenityController {

    private final AmenityService amenityService;

    @GetMapping("/{amenityId}")
    public AmenityDto getAmenityById(@PathVariable("amenityId") String amenityId){
        return amenityService.getAmenityDtoById(amenityId);
    }

    @PostMapping
    public AmenityDto createAmenity(@RequestBody AmenityDto amenityDto){
        return amenityService.createAmenity(amenityDto);
    }
}

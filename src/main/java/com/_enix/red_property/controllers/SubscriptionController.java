package com._enix.red_property.controllers;


import com._enix.red_property.dtos.AmenityDto;
import com._enix.red_property.dtos.SubscriptionPlanFeatureDto;
import com._enix.red_property.services.AmenityService;
import com._enix.red_property.services.SubscriptionService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/rest/api/v1/subscription-plans")
@RequiredArgsConstructor
@Slf4j
public class SubscriptionController {

    private final SubscriptionService subscriptionService;

//    @GetMapping("/{amenityId}")
//    public AmenityDto getAmenityById(@PathVariable("amenityId") String amenityId){
//        return amenityService.getAmenityDtoById(amenityId);
//    }

    @GetMapping
    public Page<SubscriptionPlanFeatureDto> getAllSubsciptionPlanFeature(Pageable pageable, @RequestParam(value = "q", required = false) String q){
        return subscriptionService.getAllSubsciptionPlanFeature(pageable, q);
    }

//    @PostMapping
//    public AmenityDto createAmenity(@RequestBody AmenityDto amenityDto){
//        return amenityService.createAmenity(amenityDto);
//    }

//    @PutMapping
//    public AmenityDto updateAmenity(@RequestBody AmenityDto amenityDto){
//        return amenityService.updateAmenity(amenityDto);
//    }
//
//    @DeleteMapping("/{amenityId}")
//    public void deleteAmenityById(@PathVariable("amenityId") String amenityId){
//        amenityService.deleteAmenity(amenityId);
//    }
}

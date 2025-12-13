package com._enix.red_property.controllers;


import com._enix.red_property.dtos.AgencyDto;
import com._enix.red_property.dtos.PropertyCategoryDto;
import com._enix.red_property.dtos.PropertyDto;
import com._enix.red_property.dtos.PropertyTypeDto;
import com._enix.red_property.services.AgencyService;
import com._enix.red_property.services.PropertyService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/rest/api/v1/properties")
@RequiredArgsConstructor
@Slf4j
public class PropertyController {

    private final PropertyService propertyService;

    @GetMapping("/{propertyId}")
    public PropertyDto getPropertyById(@PathVariable("propertyId") String propertyId){
        return propertyService.getPropertyDtoById(propertyId);
    }

    @PostMapping
    public PropertyDto createProperty(@RequestBody PropertyDto propertyDto){
        return propertyService.createProperty(propertyDto);
    }

    @PostMapping("/create-property-category")
    public PropertyCategoryDto createPropertyCategory(@RequestBody PropertyCategoryDto propertyCategoryDto){
        return propertyService.createPropertyCategory(propertyCategoryDto);
    }

    @PostMapping("/create-property-type")
    public PropertyTypeDto createPropertyType(@RequestBody PropertyTypeDto propertyCategoryDto){
        return propertyService.createPropertyType(propertyCategoryDto);
    }
}

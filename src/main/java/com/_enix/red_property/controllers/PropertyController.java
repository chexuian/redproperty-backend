package com._enix.red_property.controllers;


import com._enix.red_property.dtos.*;
import com._enix.red_property.services.AgencyService;
import com._enix.red_property.services.PropertyService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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

    @GetMapping
    public Page<PropertyDto> getAllProperties(Pageable pageable, @RequestParam(value = "q", required = false) String q){
        return propertyService.getAllProperties(pageable, q);
    }

    @PostMapping
    public PropertyDto createProperty(@RequestBody PropertyDto propertyDto){
        return propertyService.createProperty(propertyDto);
    }

    @PutMapping
    public PropertyDto updateProperty(@RequestBody PropertyDto propertyDto){
        return propertyService.updateProperty(propertyDto);
    }

    @DeleteMapping("/{propertyId}")
    public void deleteProperty(@PathVariable("propertyId") String propertyId){
        propertyService.deleteProperty(propertyId);
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

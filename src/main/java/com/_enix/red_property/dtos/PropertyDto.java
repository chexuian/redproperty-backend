package com._enix.red_property.dtos;

import com._enix.red_property.enums.PropertyAvailabilityStatus;
import com._enix.red_property.enums.PropertyListingType;
import jakarta.persistence.Column;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import java.math.BigDecimal;
import java.util.List;

@Data
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
public class PropertyDto {
    private String id;
    private String name;
    private String description;
    private PropertyCategoryDto category;
    private PropertyTypeDto type;
    private String address;
    private String city;
    private String state;
    private String country;
    private BigDecimal price;
    private int bedrooms;
    private int bathrooms;
    private int carparks;
    private String builtYear;
    private String floorLevel;
    private BigDecimal areaSqft;
    private PropertyListingType listingType;
    private PropertyAvailabilityStatus status;
    private AgentDto agent;
    private List<PropertyImageDto> images;
    private List<AmenityDto> amenities;
    private List<FacilityDto> facilities;
    private List<TagDto> tags;
    private List<PropertyFAQDto> faqs;
}

package com._enix.red_property.services;


import com._enix.red_property.dtos.*;
import com._enix.red_property.entities.*;
import com._enix.red_property.enums.PropertyAvailabilityStatus;
import com._enix.red_property.repositories.*;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;


@Service
@RequiredArgsConstructor
@Slf4j
public class PropertyService {

    private final PropertyRepository propertyRepository;
    private final PropertyImageRepository propertyImageRepository;
    private final PropertyCategoryRepository propertyCategoryRepository;
    private final PropertyTypeRepository propertyTypeRepository;
    private final UserService userService;
    private final AmenityService amenityService;
    private final FacilityService facilityService;
    private final TagService tagService;

    public Property getPropertyById(String id){
        return propertyRepository.findByIdAndDeletedAtIsNull(id).orElseThrow(
                () -> {
                    log.error("Unable to find the Property with id : {}", id);
                    return new RuntimeException("Unable to find the Property with id : " + id);
                }
        );
    }

    public List<PropertyImageDto> getPropertyImagesDtoByProperty(Property property){
        if (property.getImages() == null) {
            return List.of();
        }

        return property.getImages().stream()
                .map(img -> PropertyImageDto.builder()
                        .id(img.getId())
                        .imageUrl(img.getImageUrl())
                        .imageOrder(img.getImageOrder())
                        .build())
                .collect(Collectors.toList());
    }

    public List<AmenityDto> getAmenityDtosByProperty(Property property) {
        if (property.getAmenities() == null) {
            return List.of();
        }

        return property.getAmenities().stream()
                .map(amenity -> AmenityDto.builder()
                        .id(amenity.getId())
                        .name(amenity.getName())
                        .description(amenity.getDescription())
                        .build())
                .collect(Collectors.toList());
    }

    public List<FacilityDto> getFacilityDtosByProperty(Property property) {
        if (property.getFacilities() == null) {
            return List.of();
        }

        return property.getFacilities().stream()
                .map(facility -> FacilityDto.builder()
                        .id(facility.getId())
                        .name(facility.getName())
                        .description(facility.getDescription())
                        .build())
                .collect(Collectors.toList());
    }

    public List<TagDto> getTagDtosByProperty(Property property) {
        if (property.getTags() == null) {
            return List.of();
        }

        return property.getTags().stream()
                .map(tag -> TagDto.builder()
                        .id(tag.getId())
                        .name(tag.getName())
                        .build())
                .collect(Collectors.toList());
    }

    public List<PropertyFAQDto> getPropertyFAQDtoByProperty(Property property){
        if (property.getFaqs() == null) {
            return List.of();
        }

        return property.getFaqs().stream()
                .map(faq -> PropertyFAQDto.builder()
                        .id(faq.getId())
                        .question(faq.getQuestion())
                        .answer(faq.getAnswer())
                        .orderNo(faq.getOrderNo())
                        .build())
                .collect(Collectors.toList());
    }

    public PropertyDto getPropertyDtoById(String id){
        return mapPropertyToPropertyDto(getPropertyById(id));
    }

    public PropertyDto mapPropertyToPropertyDto(Property property){
        return PropertyDto.builder()
                .id(property.getId())
                .name(property.getName())
                .description(property.getDescription())
                .category(PropertyCategoryDto.builder()
                        .id(property.getCategory().getId())
                        .name(property.getCategory().getName())
                        .description(property.getCategory().getDescription())
                        .build())
                .type(PropertyTypeDto.builder()
                        .id(property.getType().getId())
                        .name(property.getType().getName())
                        .description(property.getType().getDescription())
                        .build())
                .address(property.getAddress())
                .city(property.getCity())
                .state(property.getState())
                .country(property.getCountry())
                .price(property.getPrice())
                .bedrooms(property.getBedrooms())
                .bathrooms(property.getBathrooms())
                .carparks(property.getCarparks())
                .builtYear(property.getBuiltYear())
                .floorLevel(property.getFloorLevel())
                .areaSqft(property.getAreaSqft())
                .listingType(property.getListingType())
                .status(property.getStatus())
                .agentId(property.getAgent().getId())
                .images(getPropertyImagesDtoByProperty(property))
                .amenities(getAmenityDtosByProperty(property))
                .facilities(getFacilityDtosByProperty(property))
                .tags(getTagDtosByProperty(property))
                .faqs(getPropertyFAQDtoByProperty(property))
                .build();
    }

    public PropertyDto createProperty(PropertyDto propertyDto) {
        Agent agent = userService.getAgentById(propertyDto.getAgentId());
        PropertyCategory category = getPropertyCategoryById(propertyDto.getCategory().getId());
        PropertyType type = getPropertyTypeById(propertyDto.getType().getId());

        List<Amenity> amenities = amenityService.getAmenitiesByDto(propertyDto.getAmenities());
        List<Facility> facilities = facilityService.getFacilitiesByDto(propertyDto.getFacilities());
        List<Tag> tags = tagService.getTagsByDto(propertyDto.getTags());

        Property property = Property.builder()
                .name(propertyDto.getName())
                .description(propertyDto.getDescription())
                .category(category)
                .type(type)
                .address(propertyDto.getAddress())
                .city(propertyDto.getCity())
                .state(propertyDto.getState())
                .country(propertyDto.getCountry())
                .price(propertyDto.getPrice())
                .bedrooms(propertyDto.getBedrooms())
                .bathrooms(propertyDto.getBathrooms())
                .carparks(propertyDto.getCarparks())
                .builtYear(propertyDto.getBuiltYear())
                .floorLevel(propertyDto.getFloorLevel())
                .areaSqft(propertyDto.getAreaSqft())
                .listingType(propertyDto.getListingType())
                .status(PropertyAvailabilityStatus.AVAILABLE)
                .agent(agent)
                .amenities(amenities)
                .facilities(facilities)
                .tags(tags)
                .build();

        // Map PropertyImageDto to PropertyImage entity
        if (propertyDto.getImages() != null && !propertyDto.getImages().isEmpty()) {
            List<PropertyImage> images = propertyDto.getImages().stream()
                    .map(imgDto -> PropertyImage.builder()
                            .imageUrl(imgDto.getImageUrl())
                            .imageOrder(imgDto.getImageOrder())
                            .build())
                    .toList();
            property.setImages(images);
        }

        if (propertyDto.getFaqs() != null && !propertyDto.getFaqs().isEmpty()) {
            List<PropertyFAQ> faqs = propertyDto.getFaqs().stream()
                    .map(dto -> PropertyFAQ.builder()
                            .question(dto.getQuestion())
                            .answer(dto.getAnswer())
                            .orderNo(dto.getOrderNo())
                            .build())
                    .toList();

            property.setFaqs(faqs);
        }

        // Save property (will cascade to images)
        property = propertyRepository.save(property);

        return mapPropertyToPropertyDto(property);
    }

    public PropertyCategory getPropertyCategoryById(String id){
        return propertyCategoryRepository.findByIdAndDeletedAtIsNull(id).orElseThrow(
                () -> {
                    log.error("Unable to find the Property Category with id : {}", id);
                    return new RuntimeException("Unable to find the Property Category with id : " + id);
                }
        );
    }

    public PropertyCategoryDto getPropertyCategoryDtoById(String id){
        PropertyCategory category = getPropertyCategoryById(id);

        return PropertyCategoryDto.builder()
                .id(category.getId())
                .name(category.getName())
                .description(category.getDescription())
                .build();
    }
    public PropertyCategoryDto createPropertyCategory(PropertyCategoryDto propertyCategoryDto) {

        PropertyCategory category = PropertyCategory.builder()
                .name(propertyCategoryDto.getName())
                .description(propertyCategoryDto.getDescription())
                .build();

        category = propertyCategoryRepository.save(category);

        return PropertyCategoryDto.builder()
                .id(category.getId())
                .name(category.getName())
                .description(category.getDescription())
                .build();
    }

    public PropertyType getPropertyTypeById(String id){
        return propertyTypeRepository.findByIdAndDeletedAtIsNull(id).orElseThrow(
                () -> {
                    log.error("Unable to find the Property Type with id : {}", id);
                    return new RuntimeException("Unable to find the Property Type with id : " + id);
                }
        );
    }

    public PropertyTypeDto getPropertyTypeDtoById(String id){
        PropertyType type = getPropertyTypeById(id);

        return PropertyTypeDto.builder()
                .id(type.getId())
                .name(type.getName())
                .description(type.getDescription())
                .build();
    }

    public PropertyTypeDto createPropertyType(PropertyTypeDto propertyTypeDto) {

        PropertyType type = PropertyType.builder()
                .name(propertyTypeDto.getName())
                .description(propertyTypeDto.getDescription())
                .build();

        type = propertyTypeRepository.save(type);

        return PropertyTypeDto.builder()
                .id(type.getId())
                .name(type.getName())
                .description(type.getDescription())
                .build();
    }

}

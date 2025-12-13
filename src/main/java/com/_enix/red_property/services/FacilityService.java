package com._enix.red_property.services;


import com._enix.red_property.dtos.AmenityDto;
import com._enix.red_property.dtos.FacilityDto;
import com._enix.red_property.entities.Amenity;
import com._enix.red_property.entities.Facility;
import com._enix.red_property.repositories.AmenityRepository;
import com._enix.red_property.repositories.FacilityRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;


@Service
@RequiredArgsConstructor
@Slf4j
public class FacilityService {

    private final FacilityRepository facilityRepository;

    public Facility getFacilityById(String id){
        return facilityRepository.findByIdAndDeletedAtIsNull(id).orElseThrow(
                () -> {
                    log.error("Unable to find the Facility with id : {}", id);
                    return new RuntimeException("Unable to find the Facility with id : " + id);
                }
        );
    }

    public FacilityDto getFacilityDtoById(String id){
        Facility facility = getFacilityById(id);

        return mapFacilityToFacilityDto(facility);
    }

    public FacilityDto mapFacilityToFacilityDto(Facility facility){
        return FacilityDto.builder()
                .id(facility.getId())
                .name(facility.getName())
                .description(facility.getDescription())
                .build();
    }

    public Page<FacilityDto> getAllFacilities(Pageable pageable, String q){
        SpecService<Facility> specService = SpecService.from(Facility.class);
        Specification<Facility> spec = specService.getSpec(q);

        Page<Facility> facilityPage = facilityRepository.findAll(spec, pageable);
        return facilityPage.map(this::mapFacilityToFacilityDto);
    }

    public FacilityDto createFacility(FacilityDto facilityDto) {

        Facility facility = Facility.builder()
                .name(facilityDto.getName())
                .description(facilityDto.getDescription())
                .build();

        facility = facilityRepository.save(facility);

        return FacilityDto.builder()
                .id(facility.getId())
                .name(facility.getName())
                .description(facility.getDescription())
                .build();
    }

    public FacilityDto updateFacility(FacilityDto facilityDto) {

        Facility facility = getFacilityById(facilityDto.getId());
        facility.setName(facilityDto.getName());
        facility.setDescription(facilityDto.getDescription());

        facility = facilityRepository.save(facility);

        return mapFacilityToFacilityDto(facility);
    }

    public void deleteFacility(String id) {
        Facility facility = getFacilityById(id);
        facility.setDeletedAt(new Date());

        facilityRepository.save(facility);
    }

    public List<Facility> getFacilitiesByDto(List<FacilityDto> dtos) {
        if (dtos == null || dtos.isEmpty()) {
            return List.of();
        }
        List<String> ids = dtos.stream()
                .map(FacilityDto::getId)
                .toList();
        return facilityRepository.findByIdInAndDeletedAtIsNull(ids);
    }
}

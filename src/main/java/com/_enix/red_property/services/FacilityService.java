package com._enix.red_property.services;


import com._enix.red_property.dtos.AmenityDto;
import com._enix.red_property.dtos.FacilityDto;
import com._enix.red_property.entities.Amenity;
import com._enix.red_property.entities.Facility;
import com._enix.red_property.repositories.AmenityRepository;
import com._enix.red_property.repositories.FacilityRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

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

        return FacilityDto.builder()
                .id(facility.getId())
                .name(facility.getName())
                .description(facility.getDescription())
                .build();
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

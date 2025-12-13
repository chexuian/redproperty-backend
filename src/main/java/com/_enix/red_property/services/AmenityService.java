package com._enix.red_property.services;


import com._enix.red_property.dtos.AgencyDto;
import com._enix.red_property.dtos.AmenityDto;
import com._enix.red_property.entities.Agency;
import com._enix.red_property.entities.Amenity;
import com._enix.red_property.repositories.AgencyRepository;
import com._enix.red_property.repositories.AmenityRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
@RequiredArgsConstructor
@Slf4j
public class AmenityService {

    private final AmenityRepository amenityRepository;

    public Amenity getAmenityById(String id){
        return amenityRepository.findByIdAndDeletedAtIsNull(id).orElseThrow(
                () -> {
                    log.error("Unable to find the Amenity with id : {}", id);
                    return new RuntimeException("Unable to find the Amenity with id : " + id);
                }
        );
    }

    public AmenityDto getAmenityDtoById(String id){
        Amenity amenity = getAmenityById(id);

        return AmenityDto.builder()
                .id(amenity.getId())
                .name(amenity.getName())
                .description(amenity.getDescription())
                .build();
    }

    public AmenityDto createAmenity(AmenityDto amenityDto) {

        Amenity amenity = Amenity.builder()
                .name(amenityDto.getName())
                .description(amenityDto.getDescription())
                .build();

        amenity = amenityRepository.save(amenity);

        return AmenityDto.builder()
                .id(amenity.getId())
                .name(amenity.getName())
                .description(amenity.getDescription())
                .build();
    }

    public List<Amenity> getAmenitiesByDto(List<AmenityDto> dtos) {
        if (dtos == null || dtos.isEmpty()) {
            return List.of();
        }
        List<String> ids = dtos.stream()
                .map(AmenityDto::getId)
                .toList();
        return amenityRepository.findByIdInAndDeletedAtIsNull(ids);
    }
}

package com._enix.red_property.services;


import com._enix.red_property.dtos.AgencyDto;
import com._enix.red_property.dtos.AmenityDto;
import com._enix.red_property.dtos.PropertyDto;
import com._enix.red_property.entities.Agency;
import com._enix.red_property.entities.Amenity;
import com._enix.red_property.entities.Property;
import com._enix.red_property.repositories.AgencyRepository;
import com._enix.red_property.repositories.AmenityRepository;
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
        return mapAmenityToAmenityDto(getAmenityById(id));
    }

    public AmenityDto mapAmenityToAmenityDto(Amenity amenity){
        return AmenityDto.builder()
                .id(amenity.getId())
                .name(amenity.getName())
                .description(amenity.getDescription())
                .build();
    }

    public Page<AmenityDto> getAllAmenities(Pageable pageable, String q){
        SpecService<Amenity> specService = SpecService.from(Amenity.class);
        Specification<Amenity> spec = specService.getSpec(q);

        Page<Amenity> amenityPage = amenityRepository.findAll(spec, pageable);
        return amenityPage.map(this::mapAmenityToAmenityDto);
    }

    public AmenityDto createAmenity(AmenityDto amenityDto) {

        Amenity amenity = Amenity.builder()
                .name(amenityDto.getName())
                .description(amenityDto.getDescription())
                .build();

        amenity = amenityRepository.save(amenity);

        return mapAmenityToAmenityDto(amenity);
    }

    public AmenityDto updateAmenity(AmenityDto amenityDto) {

        Amenity amenity = getAmenityById(amenityDto.getId());
        amenity.setName(amenityDto.getName());
        amenity.setDescription(amenityDto.getDescription());

        amenity = amenityRepository.save(amenity);

        return mapAmenityToAmenityDto(amenity);
    }

    public void deleteAmenity(String id) {
        Amenity amenity = getAmenityById(id);
        amenity.setDeletedAt(new Date());

        amenityRepository.save(amenity);
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

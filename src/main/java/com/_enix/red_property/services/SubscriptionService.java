package com._enix.red_property.services;


import com._enix.red_property.dtos.AmenityDto;
import com._enix.red_property.dtos.SubscriptionFeatureDto;
import com._enix.red_property.dtos.SubscriptionPlanDto;
import com._enix.red_property.dtos.SubscriptionPlanFeatureDto;
import com._enix.red_property.entities.Amenity;
import com._enix.red_property.entities.SubscriptionFeature;
import com._enix.red_property.entities.SubscriptionPlan;
import com._enix.red_property.entities.SubscriptionPlanFeature;
import com._enix.red_property.repositories.AmenityRepository;
import com._enix.red_property.repositories.SubscriptionFeatureRepository;
import com._enix.red_property.repositories.SubscriptionPlanFeatureRepository;
import com._enix.red_property.repositories.SubscriptionPlanRepository;
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
public class SubscriptionService {

    private final SubscriptionPlanRepository subscriptionPlanRepository;
    private final SubscriptionFeatureRepository subscriptionFeatureRepository;
    private final SubscriptionPlanFeatureRepository subscriptionPlanFeatureRepository;

//    public Amenity getAmenityById(String id){
//        return amenityRepository.findByIdAndDeletedAtIsNull(id).orElseThrow(
//                () -> {
//                    log.error("Unable to find the Amenity with id : {}", id);
//                    return new RuntimeException("Unable to find the Amenity with id : " + id);
//                }
//        );
//    }
//
//    public AmenityDto getAmenityDtoById(String id){
//        return mapAmenityToAmenityDto(getAmenityById(id));
//    }

    public SubscriptionPlanDto mapSubscriptionPlanToDto(SubscriptionPlan plan) {
        return SubscriptionPlanDto.builder()
                .id(plan.getId())
                .name(plan.getName())
                .tier(plan.getTier())
                .price(plan.getPrice())
                .durationDays(plan.getDurationDays())
                .build();
    }

    public SubscriptionFeatureDto mapSubscriptionFeatureToDto(SubscriptionFeature feature) {
        return SubscriptionFeatureDto.builder()
                .id(feature.getId())
                .code(feature.getCode())
                .name(feature.getName())
                .description(feature.getDescription())
                .build();
    }

    public SubscriptionPlanFeatureDto mapSubscriptionPlanFeatureToDto(
            SubscriptionPlanFeature planFeature
    ) {
        return SubscriptionPlanFeatureDto.builder()
                .id(planFeature.getId())
                .subscriptionPlanDto(
                        mapSubscriptionPlanToDto(planFeature.getPlan())
                )
                .subscriptionFeatureDto(
                        mapSubscriptionFeatureToDto(planFeature.getFeature())
                )
                .featureLimit(planFeature.getFeatureLimit())
                .isUnlimited(planFeature.isUnlimited())
                .build();
    }



    public Page<SubscriptionPlanFeatureDto> getAllSubsciptionPlanFeature(Pageable pageable, String q){
        SpecService<SubscriptionPlanFeature> specService = SpecService.from(SubscriptionPlanFeature.class);
        Specification<SubscriptionPlanFeature> spec = specService.getSpec(q);

        Page<SubscriptionPlanFeature> subscriptionPlanFeaturePage = subscriptionPlanFeatureRepository.findAll(spec, pageable);
        return subscriptionPlanFeaturePage.map(this::mapSubscriptionPlanFeatureToDto);
    }

//    public AmenityDto createAmenity(AmenityDto amenityDto) {
//
//        Amenity amenity = Amenity.builder()
//                .name(amenityDto.getName())
//                .description(amenityDto.getDescription())
//                .build();
//
//        amenity = amenityRepository.save(amenity);
//
//        return mapAmenityToAmenityDto(amenity);
//    }

//    public AmenityDto updateAmenity(AmenityDto amenityDto) {
//
//        Amenity amenity = getAmenityById(amenityDto.getId());
//        amenity.setName(amenityDto.getName());
//        amenity.setDescription(amenityDto.getDescription());
//
//        amenity = amenityRepository.save(amenity);
//
//        return mapAmenityToAmenityDto(amenity);
//    }
//
//    public void deleteAmenity(String id) {
//        Amenity amenity = getAmenityById(id);
//        amenity.setDeletedAt(new Date());
//
//        amenityRepository.save(amenity);
//    }
//
//    public List<Amenity> getAmenitiesByDto(List<AmenityDto> dtos) {
//        if (dtos == null || dtos.isEmpty()) {
//            return List.of();
//        }
//        List<String> ids = dtos.stream()
//                .map(AmenityDto::getId)
//                .toList();
//        return amenityRepository.findByIdInAndDeletedAtIsNull(ids);
//    }
}

package com._enix.red_property.services;


import com._enix.red_property.dtos.AdminDto;
import com._enix.red_property.dtos.AgencyDto;
import com._enix.red_property.dtos.UserDto;
import com._enix.red_property.entities.Admin;
import com._enix.red_property.entities.Agency;
import com._enix.red_property.entities.Amenity;
import com._enix.red_property.entities.User;
import com._enix.red_property.enums.UserRole;
import com._enix.red_property.repositories.AdminRepository;
import com._enix.red_property.repositories.AgencyRepository;
import com._enix.red_property.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;


@Service
@RequiredArgsConstructor
@Slf4j
public class AgencyService {

    private final AgencyRepository agencyRepository;

    public Agency getAgencyById(String id){
        return agencyRepository.findByIdAndDeletedAtIsNull(id).orElseThrow(
                () -> {
                    log.error("Unable to find the Agency with id : {}", id);
                    return new RuntimeException("Unable to find the Agency with id : " + id);
                }
        );
    }

    public AgencyDto getAgencyDtoById(String id){
        Agency agency = getAgencyById(id);

        return AgencyDto.builder()
                .id(agency.getId())
                .name(agency.getName())
                .address(agency.getAddress())
                .city(agency.getCity())
                .state(agency.getState())
                .country(agency.getCountry())
                .contactNo(agency.getContactNo())
                .build();
    }

    public AgencyDto createAgency(AgencyDto agencyDto) {

        Agency agency = Agency.builder()
                .name(agencyDto.getName())
                .address(agencyDto.getAddress())
                .city(agencyDto.getCity())
                .state(agencyDto.getState())
                .country(agencyDto.getCountry())
                .contactNo(agencyDto.getContactNo())
                .build();

        agency = agencyRepository.save(agency);

        return AgencyDto.builder()
                .id(agency.getId())
                .name(agency.getName())
                .address(agency.getAddress())
                .city(agency.getCity())
                .state(agency.getState())
                .country(agency.getCountry())
                .contactNo(agency.getContactNo())
                .build();
    }

    public Page<AgencyDto> getAllAgencies(Pageable pageable, String q) {
        SpecService<Agency> specService = SpecService.from(Agency.class);
        Specification<Agency> spec = specService.getSpec(q);

        Page<Agency> agencyPage = agencyRepository.findAll(spec, pageable);
        return agencyPage.map(this::mapAgencyToAgencyDto);
    }

    public AgencyDto mapAgencyToAgencyDto(Agency agency){
        return AgencyDto.builder()
                .id(agency.getId())
                .name(agency.getName())
                .address(agency.getAddress())
                .city(agency.getCity())
                .state(agency.getState())
                .country(agency.getCountry())
                .contactNo(agency.getContactNo())
                .build();
    }
}

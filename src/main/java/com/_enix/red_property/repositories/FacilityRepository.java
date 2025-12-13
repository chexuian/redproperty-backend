package com._enix.red_property.repositories;


import com._enix.red_property.entities.Amenity;
import com._enix.red_property.entities.Facility;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;


@Repository
public interface FacilityRepository extends JpaRepository<Facility, String>, JpaSpecificationExecutor<Facility> {
   Optional<Facility> findByIdAndDeletedAtIsNull(String id);
   List<Facility> findByIdInAndDeletedAtIsNull(List<String> ids);
}

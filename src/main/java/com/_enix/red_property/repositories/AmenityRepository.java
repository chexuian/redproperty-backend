package com._enix.red_property.repositories;


import com._enix.red_property.entities.Admin;
import com._enix.red_property.entities.Amenity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;


@Repository
public interface AmenityRepository extends JpaRepository<Amenity, String>, JpaSpecificationExecutor<Amenity> {
   Optional<Amenity> findByIdAndDeletedAtIsNull(String id);
   List<Amenity> findByIdInAndDeletedAtIsNull(List<String> ids);
}

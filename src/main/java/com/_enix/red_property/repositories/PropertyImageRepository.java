package com._enix.red_property.repositories;


import com._enix.red_property.entities.Property;
import com._enix.red_property.entities.PropertyImage;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import java.util.Optional;


@Repository
public interface PropertyImageRepository extends JpaRepository<PropertyImage, String>, JpaSpecificationExecutor<PropertyImage> {
   Optional<PropertyImage> findByIdAndDeletedAtIsNull(String id);
}

package com._enix.red_property.repositories;


import com._enix.red_property.entities.PropertyCategory;
import com._enix.red_property.entities.PropertyType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import java.util.Optional;


@Repository
public interface PropertyTypeRepository extends JpaRepository<PropertyType, String>, JpaSpecificationExecutor<PropertyType> {
   Optional<PropertyType> findByIdAndDeletedAtIsNull(String id);
}

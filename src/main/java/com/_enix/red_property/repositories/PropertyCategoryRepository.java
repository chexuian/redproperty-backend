package com._enix.red_property.repositories;


import com._enix.red_property.entities.Property;
import com._enix.red_property.entities.PropertyCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import java.util.Optional;


@Repository
public interface PropertyCategoryRepository extends JpaRepository<PropertyCategory, String>, JpaSpecificationExecutor<PropertyCategory> {
   Optional<PropertyCategory> findByIdAndDeletedAtIsNull(String id);
}

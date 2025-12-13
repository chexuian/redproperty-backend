package com._enix.red_property.repositories;


import com._enix.red_property.entities.Admin;
import com._enix.red_property.entities.Property;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import java.util.Optional;


@Repository
public interface PropertyRepository extends JpaRepository<Property, String>, JpaSpecificationExecutor<Property> {
   Optional<Property> findByIdAndDeletedAtIsNull(String id);
}

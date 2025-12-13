package com._enix.red_property.repositories;


import com._enix.red_property.entities.Agency;
import com._enix.red_property.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import java.util.Optional;


@Repository
public interface AgencyRepository extends JpaRepository<Agency, String>, JpaSpecificationExecutor<Agency> {
   Optional<Agency> findByIdAndDeletedAtIsNull(String id);
}

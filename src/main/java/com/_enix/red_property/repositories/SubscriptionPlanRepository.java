package com._enix.red_property.repositories;


import com._enix.red_property.entities.Amenity;
import com._enix.red_property.entities.SubscriptionPlan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;


@Repository
public interface SubscriptionPlanRepository extends JpaRepository<SubscriptionPlan, String>, JpaSpecificationExecutor<SubscriptionPlan> {
   Optional<SubscriptionPlan> findByIdAndDeletedAtIsNull(String id);
   List<SubscriptionPlan> findByIdInAndDeletedAtIsNull(List<String> ids);
}

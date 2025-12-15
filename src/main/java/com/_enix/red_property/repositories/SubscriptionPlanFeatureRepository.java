package com._enix.red_property.repositories;


import com._enix.red_property.entities.SubscriptionFeature;
import com._enix.red_property.entities.SubscriptionPlanFeature;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;


@Repository
public interface SubscriptionPlanFeatureRepository extends JpaRepository<SubscriptionPlanFeature, String>, JpaSpecificationExecutor<SubscriptionPlanFeature> {
   Optional<SubscriptionPlanFeature> findByIdAndDeletedAtIsNull(String id);
   List<SubscriptionPlanFeature> findByIdInAndDeletedAtIsNull(List<String> ids);
}

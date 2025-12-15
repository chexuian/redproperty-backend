package com._enix.red_property.repositories;


import com._enix.red_property.entities.SubscriptionFeature;
import com._enix.red_property.entities.SubscriptionPlan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;


@Repository
public interface SubscriptionFeatureRepository extends JpaRepository<SubscriptionFeature, String>, JpaSpecificationExecutor<SubscriptionFeature> {
   Optional<SubscriptionFeature> findByIdAndDeletedAtIsNull(String id);
   List<SubscriptionFeature> findByIdInAndDeletedAtIsNull(List<String> ids);
}

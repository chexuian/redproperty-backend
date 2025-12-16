package com._enix.red_property.repositories;


import com._enix.red_property.entities.AgentSubscription;
import com._enix.red_property.entities.SubscriptionFeature;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;


@Repository
public interface AgentSubscriptionRepository extends JpaRepository<AgentSubscription, String>, JpaSpecificationExecutor<AgentSubscription> {
   Optional<AgentSubscription> findByIdAndDeletedAtIsNull(String id);
   List<AgentSubscription> findByIdInAndDeletedAtIsNull(List<String> ids);
}

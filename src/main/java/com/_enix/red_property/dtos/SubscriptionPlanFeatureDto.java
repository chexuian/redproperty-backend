package com._enix.red_property.dtos;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
public class SubscriptionPlanFeatureDto {
    private String id;
    private SubscriptionPlanDto subscriptionPlanDto;
    private SubscriptionFeatureDto subscriptionFeatureDto;
    private Integer featureLimit;
    private boolean isUnlimited;
}

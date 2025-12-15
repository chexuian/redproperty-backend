package com._enix.red_property.dtos;

import com._enix.red_property.enums.SubscriptionPlanTier;
import jakarta.persistence.Column;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import java.math.BigDecimal;

@Data
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
public class SubscriptionFeatureDto {
    private String id;
    private String code;
    private String name;
    private String description;
}

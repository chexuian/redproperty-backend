package com._enix.red_property.dtos;

import com._enix.red_property.enums.SubscriptionPlanTier;
import jakarta.persistence.Column;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import java.math.BigDecimal;

@Data
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
public class SubscriptionPlanDto {
    private String id;
    private String name;
    private SubscriptionPlanTier tier;
    private BigDecimal price;
    private int durationDays;
}

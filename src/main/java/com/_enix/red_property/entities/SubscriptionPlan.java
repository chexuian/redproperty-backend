package com._enix.red_property.entities;

import com._enix.red_property.enums.SubscriptionPlanTier;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.UuidGenerator;

import java.math.BigDecimal;

@Entity
@Table(name = "subscription_plan")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class SubscriptionPlan extends Auditable {

    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "uuid")
    @UuidGenerator
    private String id;

    @Column(name = "name")
    private String name;

    @Column(name = "tier")
    @Enumerated(EnumType.STRING)
    private SubscriptionPlanTier tier;

    @Column(name = "price")
    private BigDecimal price;

    @Column(name = "duration_days")
    private int durationDays;
}
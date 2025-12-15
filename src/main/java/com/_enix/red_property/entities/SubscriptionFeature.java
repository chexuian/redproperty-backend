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
@Table(name = "subscription_feature")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class SubscriptionFeature extends Auditable {

    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "uuid")
    @UuidGenerator
    private String id;

    @Column(unique = true)
    private String code;

    @Column(name = "name")
    private String name;

    @Column(columnDefinition = "TEXT")
    private String description;

}
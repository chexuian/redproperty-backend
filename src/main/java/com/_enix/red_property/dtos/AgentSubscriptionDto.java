package com._enix.red_property.dtos;

import com._enix.red_property.enums.SubscriptionStatus;
import lombok.AllArgsConstructor;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import java.util.Date;

@Data
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
public class AgentSubscriptionDto {

    private String id;
    private AgentDto agent;
    private SubscriptionPlanDto subscriptionPlan;
    private Date startDate;
    private Date endDate;
    private SubscriptionStatus status;
}


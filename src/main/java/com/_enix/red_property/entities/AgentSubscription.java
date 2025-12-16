package com._enix.red_property.entities;

import com._enix.red_property.enums.SubscriptionStatus;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.UuidGenerator;

import java.util.Date;

@Entity
@Table(name = "agent_subscription")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class AgentSubscription extends Auditable {

    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "uuid")
    @UuidGenerator
    private String id;

    /**
     * Agent is identified by user_id (because Agent uses @MapsId)
     */
    @ManyToOne
    @JoinColumn(name = "agent_id", nullable = false)
    private Agent agent;

    @ManyToOne
    @JoinColumn(name = "plan_id", nullable = false)
    private SubscriptionPlan subscriptionPlan;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "start_date")
    private Date startDate;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "end_date")
    private Date endDate;

    @Enumerated(EnumType.STRING)
    @Column(name = "status", nullable = false)
    private SubscriptionStatus status;
}
package com._enix.red_property.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.UuidGenerator;

@Entity
@Table(name = "agent")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Agent extends Auditable {

    @Id
    @Column(name = "user_id")
    private String id;

    @OneToOne
    @MapsId
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "agency_id")
    private Agency agency;


    @Column(name = "license_number")
    private String licenseNumber;


    @Column(columnDefinition = "TEXT")
    private String bio;

    @Column(name = "verified")
    private boolean verified;
}
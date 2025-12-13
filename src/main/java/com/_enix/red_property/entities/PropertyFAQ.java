package com._enix.red_property.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.UuidGenerator;

@Entity
@Table(name = "property_faq")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PropertyFAQ extends Auditable {

    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "uuid")
    @UuidGenerator
    private String id;

    @Column(name = "question", columnDefinition = "TEXT", nullable = false)
    private String question;

    @Column(name = "answer", columnDefinition = "TEXT", nullable = false)
    private String answer;

    @Column(name = "order_no")
    private int orderNo;
}
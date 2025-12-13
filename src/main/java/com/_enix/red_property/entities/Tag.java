package com._enix.red_property.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.UuidGenerator;

@Entity
@Table(name = "tag")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Tag extends Auditable {

    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "uuid")
    @UuidGenerator
    private String id;

    @Column(name = "name")
    private String name;
}
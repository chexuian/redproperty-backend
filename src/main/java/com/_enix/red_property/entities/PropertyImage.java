package com._enix.red_property.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.UuidGenerator;

@Entity
@Table(name = "property_image")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PropertyImage extends Auditable {

    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "uuid")
    @UuidGenerator
    private String id;

    @Column(name = "image_url")
    private String imageUrl;

    @Column(name = "image_order")
    private int imageOrder;
}
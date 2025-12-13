package com._enix.red_property.entities;

import com._enix.red_property.enums.PropertyCategoryName;
import com._enix.red_property.enums.UserRole;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.UuidGenerator;

@Entity
@Table(name = "property_category")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PropertyCategory extends Auditable {

    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "uuid")
    @UuidGenerator
    private String id;

    @Column(name = "name")
    @Enumerated(EnumType.STRING)
    private PropertyCategoryName name;

    @Column(name = "description")
    private String description;
}
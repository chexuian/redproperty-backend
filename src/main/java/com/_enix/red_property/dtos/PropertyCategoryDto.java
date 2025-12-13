package com._enix.red_property.dtos;

import com._enix.red_property.enums.PropertyCategoryName;
import jakarta.persistence.Column;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
public class PropertyCategoryDto {
    private String id;
    private PropertyCategoryName name;
    private String description;
}

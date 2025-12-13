package com._enix.red_property.dtos;

import com._enix.red_property.enums.PropertyTypeName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
public class AmenityDto {
    private String id;
    private String name;
    private String description;
}

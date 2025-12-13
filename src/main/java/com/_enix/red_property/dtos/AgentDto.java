package com._enix.red_property.dtos;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
public class AgentDto extends UserDto {
    private AgencyDto agency;
    private String licenseNumber;
    private String bio;
    private boolean verified;
}

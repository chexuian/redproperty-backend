package com._enix.red_property.dtos;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
public class AgencyDto {
    private String id;
    private String name;
    private String address;
    private String city;
    private String state;
    private String country;
    private String contactNo;
}

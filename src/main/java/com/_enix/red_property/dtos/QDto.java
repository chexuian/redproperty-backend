package com._enix.red_property.dtos;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.Map;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class QDto {

    private Map<String, List<FieldData>> fields;

    @Data
    @Builder
    @AllArgsConstructor
    @NoArgsConstructor
    public static class FieldData {

        private String op;
        private String value;
    }
}

package com._enix.red_property.services;

import com._enix.red_property.dtos.QDto;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.jpa.domain.Specification;

import java.lang.reflect.Field;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Map;

@Slf4j
@RequiredArgsConstructor
@Getter
public class SpecService<T> {

    private final ObjectMapper objectMapper = new ObjectMapper(); //cant use the normal inject way must declare a new object mapper
    private final Class<T> clz;

    public static <T> SpecService<T> from(Class<T> clz) {
        return new SpecService<>(clz);
    }

    public Specification<T> getSpec(String q) {
        Specification<T> spec = Specification.where(null);
//        Specification<T> spec = Specification.unrestricted(); //supposed to replace the deprecated where
        spec = spec.and((root, criteriaQuery, cb) -> cb.isNull(root.get("deletedAt")));

        if (q != null) {
            String decodedJson = java.net.URLDecoder.decode(q, StandardCharsets.UTF_8);

            QDto qDto = null;
            try {
                qDto = objectMapper.readValue(decodedJson, QDto.class);
            } catch (JsonProcessingException e) {
                throw new RuntimeException(e);
            }

            for (Map.Entry<String, List<QDto.FieldData>> entry : qDto.getFields().entrySet()) {
                String fieldName = entry.getKey();
                List<QDto.FieldData> fieldDataList = entry.getValue();

                for (QDto.FieldData fieldData : fieldDataList) {
                    String op = fieldData.getOp();
                    String value = fieldData.getValue();

                    Field matchingField = getFieldByName(fieldName);
                    if (matchingField != null) {
                        Specification<T> operatorSpec = createOperatorSpec(fieldName, op, value);
                        // Combine the operator-specific specification with the main specification
                        spec = spec.and(operatorSpec);
                        // Here, you can perform further actions with the matching field.
                    } else {
                        log.error("[{}] Field not found in entity.", fieldName);
                    }
                }
            }
        }

        return spec;
    }

    public Field getFieldByName(String fieldName) {
        try {
            return clz.getDeclaredField(fieldName);
        } catch (NoSuchFieldException e) {
            return null; // Field not found
        }
    }

    public Specification<T> createOperatorSpec(String fieldName, String op, String value) {
        switch (op) {
            case "eq":
                return (root, query, cb) -> cb.equal(cb.lower(root.get(fieldName)), value.toLowerCase());
            case "ne":
                return (root, query, cb) -> cb.notEqual(cb.lower(root.get(fieldName)), value.toLowerCase());
            case "like":
                return (root, query, cb) -> cb.like(cb.lower(root.get(fieldName)), "%" + value.toLowerCase() + "%");
            case "notLike":
                return (root, query, cb) -> cb.notLike(cb.lower(root.get(fieldName)), "%" + value.toLowerCase() + "%");
            case "greaterThan":
                return (root, query, cb) -> cb.greaterThan(root.get(fieldName), value);
            case "lessThan":
                return (root, query, cb) -> cb.lessThan(root.get(fieldName), value);
            default:
                return (root, query, cb) -> cb.conjunction(); // No-op
        }
    }
}

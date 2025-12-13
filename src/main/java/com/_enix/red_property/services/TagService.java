package com._enix.red_property.services;


import com._enix.red_property.dtos.FacilityDto;
import com._enix.red_property.dtos.TagDto;
import com._enix.red_property.entities.Facility;
import com._enix.red_property.entities.Tag;
import com._enix.red_property.repositories.FacilityRepository;
import com._enix.red_property.repositories.TagRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
@RequiredArgsConstructor
@Slf4j
public class TagService {

    private final TagRepository tagRepository;

    public Tag getTagById(String id){
        return tagRepository.findByIdAndDeletedAtIsNull(id).orElseThrow(
                () -> {
                    log.error("Unable to find the Tag with id : {}", id);
                    return new RuntimeException("Unable to find the Tag with id : " + id);
                }
        );
    }

    public TagDto getTagDtoById(String id){
        Tag tag = getTagById(id);

        return TagDto.builder()
                .id(tag.getId())
                .name(tag.getName())
                .build();
    }

    public TagDto createTag(TagDto tagDto) {

        Tag tag = Tag.builder()
                .name(tagDto.getName())
                .build();

        tag = tagRepository.save(tag);

        return TagDto.builder()
                .id(tag.getId())
                .name(tag.getName())
                .build();
    }

    public List<Tag> getTagsByDto(List<TagDto> dtos) {
        if (dtos == null || dtos.isEmpty()) {
            return List.of();
        }
        List<String> ids = dtos.stream()
                .map(TagDto::getId)
                .toList();
        return tagRepository.findByIdInAndDeletedAtIsNull(ids);
    }
}

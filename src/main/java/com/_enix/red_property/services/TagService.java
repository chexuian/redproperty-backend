package com._enix.red_property.services;


import com._enix.red_property.dtos.FacilityDto;
import com._enix.red_property.dtos.TagDto;
import com._enix.red_property.entities.Facility;
import com._enix.red_property.entities.Tag;
import com._enix.red_property.repositories.FacilityRepository;
import com._enix.red_property.repositories.TagRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import java.util.Date;
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

        return mapTagToTagDto(tag);
    }

    public TagDto mapTagToTagDto(Tag tag){
        return TagDto.builder()
                .id(tag.getId())
                .name(tag.getName())
                .build();
    }

    public Page<TagDto> getAllTags(Pageable pageable, String q){
        SpecService<Tag> specService = SpecService.from(Tag.class);
        Specification<Tag> spec = specService.getSpec(q);

        Page<Tag> facilityPage = tagRepository.findAll(spec, pageable);
        return facilityPage.map(this::mapTagToTagDto);
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

    public TagDto updateTag(TagDto tagDto) {
        Tag tag = getTagById(tagDto.getId());
        tag.setName(tagDto.getName());

        tag = tagRepository.save(tag);

        return mapTagToTagDto(tag);
    }

    public void deleteTag(String id) {
        Tag tag = getTagById(id);
        tag.setDeletedAt(new Date());

        tagRepository.save(tag);
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

package com._enix.red_property.controllers;


import com._enix.red_property.dtos.FacilityDto;
import com._enix.red_property.dtos.TagDto;
import com._enix.red_property.services.FacilityService;
import com._enix.red_property.services.TagService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/rest/api/v1/tags")
@RequiredArgsConstructor
@Slf4j
public class TagController {

    private final TagService tagService;

    @GetMapping("/{tagId}")
    public TagDto getTagById(@PathVariable("tagId") String tagId){
        return tagService.getTagDtoById(tagId);
    }

    @PostMapping
    public TagDto createTag(@RequestBody TagDto tagDto){
        return tagService.createTag(tagDto);
    }
}

package com._enix.red_property.repositories;


import com._enix.red_property.entities.Facility;
import com._enix.red_property.entities.Tag;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;


@Repository
public interface TagRepository extends JpaRepository<Tag, String>, JpaSpecificationExecutor<Tag> {
   Optional<Tag> findByIdAndDeletedAtIsNull(String id);
   List<Tag> findByIdInAndDeletedAtIsNull(List<String> ids);
}

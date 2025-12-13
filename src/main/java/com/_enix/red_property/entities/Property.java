package com._enix.red_property.entities;

import com._enix.red_property.enums.PropertyAvailabilityStatus;
import com._enix.red_property.enums.PropertyListingType;
import com._enix.red_property.enums.UserRole;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.UuidGenerator;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Entity
@Table(name = "property")
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Property extends Auditable {

    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "uuid")
    @UuidGenerator
    private String id;

    @Column(name = "name")
    private String name;

    @Column(name = "description", columnDefinition = "TEXT")
    private String description;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private PropertyCategory category;

    @ManyToOne
    @JoinColumn(name = "type_id")
    private PropertyType type;

    @Column(name = "address")
    private String address;

    @Column(name = "city")
    private String city;

    @Column(name = "state")
    private String state;

    @Column(name = "country")
    private String country;

    @Column(name = "price")
    private BigDecimal price;

    @Column(name = "bedrooms")
    private int bedrooms;

    @Column(name = "bathrooms")
    private int bathrooms;

    @Column(name = "carparks")
    private int carparks;

    @Column(name = "built_year")
    private String builtYear;

    @Column(name = "floor_level")
    private String floorLevel;

    @Column(name = "area_sqft")
    private BigDecimal areaSqft;

    @Column(name = "listing_type")
    @Enumerated(EnumType.STRING)
    private PropertyListingType listingType;

    @Column(name = "status")
    @Enumerated(EnumType.STRING)
    private PropertyAvailabilityStatus status;

    @ManyToOne
    @JoinColumn(name = "agent_id")
    private Agent agent;

    // Unidirectional relationship to PropertyImage
    @OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
    @JoinColumn(name = "property_id") // property_id column in PropertyImage table
    private List<PropertyImage> images;

    // ✅ Amenities
    @ManyToMany
    @JoinTable(
            name = "property_amenity",
            joinColumns = @JoinColumn(name = "property_id"),
            inverseJoinColumns = @JoinColumn(name = "amenity_id")
    )
    private List<Amenity> amenities;

    // ✅ Facilities
    @ManyToMany
    @JoinTable(
            name = "property_facility",
            joinColumns = @JoinColumn(name = "property_id"),
            inverseJoinColumns = @JoinColumn(name = "facility_id")
    )
    private List<Facility> facilities;

    // ✅ Tags
    @ManyToMany
    @JoinTable(
            name = "property_tag",
            joinColumns = @JoinColumn(name = "property_id"),
            inverseJoinColumns = @JoinColumn(name = "tag_id")
    )
    private List<Tag> tags;

    @OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
    @JoinColumn(name = "property_id") // FK in property_faq table
    private List<PropertyFAQ> faqs;
}
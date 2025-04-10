package com.ramnan.inventory_application.model;

import jakarta.persistence.*;
import lombok.Getter;

@Entity
@Table(name = "categories")
@Getter // needed for POJO -> JSON serialization
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;

    private String description;
}

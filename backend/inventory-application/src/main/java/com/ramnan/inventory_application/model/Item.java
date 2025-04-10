package com.ramnan.inventory_application.model;

import jakarta.persistence.*;
import lombok.Getter;

@Entity
@Table(name = "items")
@Getter // needed for POJO -> JSON serialization
public class Item {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;

    private String description;

    @ManyToOne
    @JoinColumn(name = "category")
    private Category category; // multiple items -> one category

    private double price;

    private int numberInStock;
}

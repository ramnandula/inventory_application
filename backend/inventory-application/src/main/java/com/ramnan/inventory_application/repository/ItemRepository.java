package com.ramnan.inventory_application.repository;

import com.ramnan.inventory_application.model.Item;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ItemRepository extends JpaRepository<Item, Long> {

    @Query(value = "SELECT * FROM items WHERE category = :id", nativeQuery = true)
    List<Item> findByCategory(Long id);
}

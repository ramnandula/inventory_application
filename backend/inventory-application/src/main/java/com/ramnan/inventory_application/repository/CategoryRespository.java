package com.ramnan.inventory_application.repository;

import com.ramnan.inventory_application.model.Category;
import com.ramnan.inventory_application.model.Item;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CategoryRespository extends JpaRepository<Category, Long> {

}

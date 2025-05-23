package com.ramnan.inventory_application.controller;

import com.ramnan.inventory_application.model.Category;
import org.springframework.web.bind.annotation.*;
import com.ramnan.inventory_application.repository.CategoryRespository;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "http://localhost:4200")
public class CategoryController {
    private final CategoryRespository categoryRespository;

    public CategoryController(CategoryRespository categoryRespository) {
        this.categoryRespository = categoryRespository;
    }

    @GetMapping("/categories")
    public List<Category> getCategories() {
        return categoryRespository.findAll();
    }

    @GetMapping("/categories/{id}")
    public Optional<Category> getCategoryById(@PathVariable  Long id) {
        return categoryRespository.findById(id);
    }

    @PostMapping("/categories")
    public Category addCategory(@RequestBody Category category) {
        return categoryRespository.save(category);
    }

    @DeleteMapping("/categories/{id}")
    public void deleteCategory(@PathVariable Long id) {
        categoryRespository.deleteById(id);
    }


    public Category updateCategory(@RequestBody Category category) {
        return null;
    }

}

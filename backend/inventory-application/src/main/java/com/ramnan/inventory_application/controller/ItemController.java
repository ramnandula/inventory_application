package com.ramnan.inventory_application.controller;

import com.ramnan.inventory_application.model.Item;
import com.ramnan.inventory_application.repository.ItemRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "http://localhost:4200")
public class ItemController {
    private final ItemRepository itemRepository;

    public ItemController(ItemRepository itemRepository) {
        this.itemRepository = itemRepository;
    }

    @GetMapping("/items")
    public List<Item> getItems() {
        return itemRepository.findAll();
    }

    @GetMapping("/items/category/{id}")
    public List<Item> getItemsByCategory(@PathVariable Long id) {
        return itemRepository.findByCategory(id);
    }

    @GetMapping("/items/{id}")
    public Optional<Item> getItemById(@PathVariable Long id) {
        return itemRepository.findById(id);
    }

    @PostMapping("/items")
    public Item addItem(Item item) {
        return itemRepository.save(item);
    }

    @DeleteMapping("/items/{id}")
    public void deleteItem(@PathVariable Long id) {
        itemRepository.deleteById(id);
    }

    public Item updateItem(Item item) {
        return null;
    }
}

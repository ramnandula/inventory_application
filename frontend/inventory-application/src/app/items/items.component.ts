import { Component, Input, OnInit } from '@angular/core';
import { NgFor } from '@angular/common';

import { Item } from '../models/item';
import { ItemService } from '../services/item.service';
import { CategoriesComponent } from '../categories/categories.component'

@Component({
  standalone: true,
  imports: [
    NgFor
  ],
  selector: 'app-items',
  templateUrl: './items.component.html',
  styleUrls: ['./items.component.css']
})
export class ItemsComponent implements OnInit {
  items: Item[] = [];
  errorMessage: string = '';
  @Input() category: number = 0;

  constructor(private itemService: ItemService) { }

  getItems(): void {
                console.log(this.items);

    this.itemService.getItems()
      .subscribe({
        next: (items) => {
            this.items = items;
            console.log("test");
            console.log(this.items);
        },
        error: (error) => {
            this.errorMessage = 'Failed to load data.';
            console.error('APIError:', error)
        }
    });
  }

  getItemsByCategory(category : number): void {
    this.itemService.getItemsByCategory(category)
      .subscribe({
        next: (items) => {
          this.items = items;
          console.log("test");
          console.log(this.items);
        },
        error: (error) => {
          this.errorMessage = 'Failed to load data.';
          console.error('APIError:', error)
        }
    });
  }

  ngOnInit(): void {
    this.getItems();
  }

//   ngOnChanges(changes : SimpleChanges): void {
//     if (changes['category']) {
//       this.getItemsByCategory(this.category);
//     }
//   }
}

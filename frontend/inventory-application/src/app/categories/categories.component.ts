import { Component } from '@angular/core';
import { NgFor } from '@angular/common';

import { Category } from '../models/category';
import { CategoryService } from '../services/category.service';

@Component({
  standalone: true,
  imports: [
    NgFor
  ],
  selector: 'app-categories',
  templateUrl: './categories.component.html',
  styleUrls: ['./categories.component.css']
})
export class CategoriesComponent {
  categories: Category[] = [];
  errorMessage: string = '';


  constructor(private categoryService: CategoryService) { }

  getCategories(): void {
//                 console.log(this.selectedCategory);

    this.categoryService.getCategories()
      .subscribe({
        next: (categories) => {
            this.categories = categories;
            console.log("test");
            console.log(this.categories);
          },
        error: (error) => {
            this.errorMessage = 'Failed to load data.';
            console.error('APIError:', error)
          }
        });
  }

//   onCategoryChange(category : number): void {
//     console.log(category);
//   }

  ngOnInit(): void {
    this.getCategories();
  }
}

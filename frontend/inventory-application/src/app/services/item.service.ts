import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, of } from 'rxjs';

import { Item } from '../models/item';
import { ITEMS } from '../mock-items';

@Injectable({
  providedIn: 'root'
})
export class ItemService {
  private apiUrl = 'http://localhost:8080/api'; // Spring Boot API url

  constructor(private http: HttpClient) { }

  getItems(): Observable<any> {
    return this.http.get(`${this.apiUrl}/items`);
  }

  getItemsByCategory(category : number): Observable<any> {
    return this.http.get(`${this.apiUrl}/items/category/${category}`);
  }
}

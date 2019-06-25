import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Page } from '../models/Page';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ProductService {
  productsUrl = 'http://localhost:8000/api/products';

  constructor(private http: HttpClient) { }

  getProducts(): Observable<Page> {
    return this.http.get<Page>(this.productsUrl);
  }
}

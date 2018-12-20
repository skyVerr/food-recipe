import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Recipe } from '../models/recipe';

@Injectable({
  providedIn: 'root'
})
export class DataService {

  apiUrl = "http://localhost/ai-api/";

  constructor(private http: HttpClient) { }

  postRecipe(form){
    return this.http.post(this.apiUrl+'add.php',form);
  }

  getRecipes():Observable<Recipe[]>{
    return this.http.get<Recipe[]>(this.apiUrl+'recipe.php');
  }

  deleteRecipe(recipe){
    return this.http.post(this.apiUrl+'delete.php',recipe);
  }

  getRecipe(recipe_id):Observable<Recipe>{
    return this.http.get<Recipe>(this.apiUrl+'singleRecipe.php?recipe_id='+recipe_id);
  }

  search(keyword):Observable<Recipe[]>{
    return this.http.get<Recipe[]>(this.apiUrl+'search.php?keyword='+keyword);
  }

  addTag(tag){
    return this.http.post(this.apiUrl+'addTag.php',tag);
  }

  searchByTag(keyword){
    return this.http.get<Recipe[]>(this.apiUrl+'searchByTag.php?keyword='+keyword);
  }

  numRows(keyword){
    return this.http.get(this.apiUrl+'num.php?keyword='+keyword);
  }

}

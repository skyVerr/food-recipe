import { Component, OnInit } from '@angular/core';
import { DataService } from 'src/app/services/data.service';
import { ActivatedRoute } from '@angular/router';
import { Recipe } from 'src/app/models/recipe';

@Component({
  selector: 'app-recipe',
  templateUrl: './recipe.component.html',
  styleUrls: ['./recipe.component.css']
})
export class RecipeComponent implements OnInit {

  recipe: Recipe;

  constructor(
    private dataService: DataService,
    private routeSnapshot: ActivatedRoute
    ) { }

  ngOnInit() {
    this.dataService.getRecipe(this.routeSnapshot.snapshot.paramMap.get('id'))
    .subscribe(recipe=>{
      this.recipe = recipe;
    });
  }

}

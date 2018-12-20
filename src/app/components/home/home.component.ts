import { Component, OnInit } from '@angular/core';
import { Recipe } from 'src/app/models/recipe';
import { DataService } from 'src/app/services/data.service';
import { async, reject } from 'q';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  recipes: Recipe[];
  allRecipe: Recipe[];
  search: any;
  searchArray;
  userInput;
  predectiveResult;

  constructor(
    private dataService: DataService
  ) { 
    this.userInput = new Array();
  }

  ngOnInit() {
    this.dataService.getRecipes()
    .subscribe(data=>{
      this.allRecipe = data;
      //load all data to allRecipe variable
    });
  }

  async onKeyUp(event){
    let data = {};

    // this.predectiveResult = "";
    let keyword = event.target.value;

    let searchRecipe = this.allRecipe.filter(e=>{
      let validate = true;
      for (let i = 0; i < keyword.length; i++) {
        
        if(keyword[i] == e.name[i]) {

        }
        else {
          validate = false;
          break;
        }
      }
      return validate;
    });

    console.log(searchRecipe);
    

    searchRecipe.forEach(recipe => {
      data[recipe.name] = recipe.image;
    });

    this.searchArray = [{data}];
    event.target.blur();
    event.target.focus();


    if(event.keyCode == 13){
      this.recipes = searchRecipe;
    }         


  } 


}

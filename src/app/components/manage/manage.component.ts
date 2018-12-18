import { Component, OnInit, EventEmitter } from '@angular/core';
import { DomSanitizer } from '@angular/platform-browser';
import { NgForm } from '@angular/forms';
import { DataService } from 'src/app/services/data.service';
import { toast, MaterializeAction } from "angular2-materialize";
import { Recipe } from 'src/app/models/recipe';

@Component({
  selector: 'app-manage',
  templateUrl: './manage.component.html',
  styleUrls: ['./manage.component.css']
})
export class ManageComponent implements OnInit {

  recipes: Recipe[];
  chips: any[];
  defaultImage: String = "assets/images/default.png";
  viewImage;
  imageUpload;
  chipsActions = new EventEmitter<string|MaterializeAction>();

  constructor(
    private domSanitizer: DomSanitizer,
    private dataService: DataService 
    ) { 
      this.chips = new Array();
    }

  ngOnInit() {
    this.viewImage = this.defaultImage;
    this.loadTable();
  }

  loadTable(){
    this.dataService.getRecipes()
      .subscribe( recipes =>{
        this.recipes = recipes;
      });
  }

  chipAdded(event){
    this.chips.push(event.detail.tag);
  }

  chipDelete(event){
    let newChips = this.chips.filter(e=>event.detail.tag!=e)
    this.chips = newChips;
  }

  onSubmit(f:NgForm){
    console.log(f.value);
    let formData:FormData = new FormData();
    Object.keys(f.value).forEach(key =>{
      formData.append(key,f.value[key]); 
    });

    formData.append('image',this.imageUpload);
    this.dataService.postRecipe(formData).subscribe( data=>{
      let recipe_id = data['id'];
      toast("Data inserted to database",2000);
      f.reset();
      this.viewImage = this.defaultImage;
      this.loadTable();
      this.chips.forEach(chip => {
        let tag = {
          recipe_id,
          name: chip
        };
        this.dataService.addTag(JSON.stringify(tag)).subscribe();
      });
      this.chipsActions.emit({action:"material_chip",params:[{data: []}]});
      this.chips = new Array();
    });
  }

  deleteRecipe(recipe){
    this.dataService.deleteRecipe(JSON.stringify(recipe)).subscribe(data=>{
      this.loadTable();
      toast("Data deleted from database",2000);
    });
  }

  imageChange(event){
    this.imageUpload = event.target.files[0];
    this.viewImage = this.domSanitizer.bypassSecurityTrustUrl(URL.createObjectURL(event.target.files[0]));
  }

}

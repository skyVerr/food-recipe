import { Component, OnInit } from '@angular/core';
import { DomSanitizer } from '@angular/platform-browser';
import { NgForm } from '@angular/forms';
import { DataService } from 'src/app/services/data.service';
import { toast } from "angular2-materialize";
import { Recipe } from 'src/app/models/recipe';

@Component({
  selector: 'app-manage',
  templateUrl: './manage.component.html',
  styleUrls: ['./manage.component.css']
})
export class ManageComponent implements OnInit {

  recipes: Recipe[];
  defaultImage: String = "assets/images/default.png";
  viewImage;
  imageUpload;

  constructor(
    private domSanitizer: DomSanitizer,
    private dataService: DataService 
    ) { }

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

  onSubmit(f:NgForm){

    let formData:FormData = new FormData();
    Object.keys(f.value).forEach(key =>{
      formData.append(key,f.value[key]); 
    });

    formData.append('image',this.imageUpload);
    this.dataService.postRecipe(formData).subscribe( ()=>{
      toast("Data inserted to database",2000);
      f.reset();
      this.viewImage = this.defaultImage;
      this.loadTable();
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

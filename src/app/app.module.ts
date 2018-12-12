import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from "@angular/forms";
import { HttpClientModule } from "@angular/common/http";

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

import { MaterializeModule } from 'angular2-materialize';
import { HomeComponent } from './components/home/home.component';
import { ManageComponent } from './components/manage/manage.component';

import { DataService } from './services/data.service';
import { RecipeComponent } from './components/recipe/recipe.component';


@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    ManageComponent,
    RecipeComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    MaterializeModule,
    HttpClientModule
  ],
  providers: [DataService],
  bootstrap: [AppComponent]
})
export class AppModule { }

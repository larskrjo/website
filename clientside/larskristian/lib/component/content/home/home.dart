library home.dart;

import 'package:angular/angular.dart';
import 'package:larskristian/controller.dart';

import 'dart:convert';
import 'dart:html';

@Component(selector: "home-component",
    templateUrl: "packages/larskristian/component/content/home/home.html",
    cssUrl: "packages/larskristian/component/content/home/home.css",
    publishAs: "cmp")
class HomeComponent {
  
  MyController controller;
  
  HomeComponent(this.controller) {
    
    HttpRequest.
          getString('http://oslo.larskristian.net/home/').
          then((responseText){
            JSON.decode(responseText);
          });
    
  }

}

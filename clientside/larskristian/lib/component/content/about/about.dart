library about.dart;

import 'package:angular/angular.dart';
import 'package:larskristian/controller.dart';

@Component(selector: "about-component",
    templateUrl: "packages/larskristian/component/content/about/about.html",
    cssUrl: "packages/larskristian/component/content/about/about.css",
    publishAs: "cmp")
class AboutComponent {
  
  MyController controller;
  
  AboutComponent(this.controller) {
  }

}

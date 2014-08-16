library cv.dart;

import 'package:angular/angular.dart';
import 'package:larskristian/controller.dart';

@Component(selector: "cv-component",
    templateUrl: "packages/larskristian/component/content/cv/cv.html",
    cssUrl: "packages/larskristian/component/content/cv/cv.css",
    publishAs: "cmp")
class CvComponent {
  
  MyController controller;
  
  CvComponent(this.controller) {
  }

}

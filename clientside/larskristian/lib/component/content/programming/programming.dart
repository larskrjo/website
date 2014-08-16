library programming.dart;

import 'package:angular/angular.dart';
import 'package:larskristian/controller.dart';

@Component(selector: "programming-component",
    templateUrl: "packages/larskristian/component/content/programming/programming.html",
    cssUrl: "packages/larskristian/component/content/programming/programming.css",
    publishAs: "cmp")
class ProgrammingComponent {
  
  MyController controller;
  
  ProgrammingComponent(this.controller) {
  }

}

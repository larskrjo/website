library mystuff.dart;

import 'package:angular/angular.dart';
import 'package:larskristian/controller.dart';

@Component(selector: "mystuff-component",
    templateUrl: "packages/larskristian/component/content/mystuff/mystuff.html",
    cssUrl: "packages/larskristian/component/content/mystuff/mystuff.css",
    publishAs: "cmp")
class MyStuffComponent {
  
  MyController controller;
  
  MyStuffComponent(this.controller) {
  }

}

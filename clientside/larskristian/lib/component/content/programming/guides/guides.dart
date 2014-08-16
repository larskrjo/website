library guides.dart;

import 'package:angular/angular.dart';
import 'package:larskristian/controller.dart';

@Component(selector: "guides-component",
    templateUrl: "packages/larskristian/component/content/programming/guides/guides.html",
    cssUrl: "packages/larskristian/component/content/programming/guides/guides.css",
    publishAs: "cmp")
class GuidesComponent {
  
  MyController controller;
  
  GuidesComponent(this.controller) {
  }

}

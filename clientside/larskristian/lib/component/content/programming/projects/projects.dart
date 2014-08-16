library projects.dart;

import 'package:angular/angular.dart';
import 'package:larskristian/controller.dart';

@Component(selector: "projects-component",
    templateUrl: "packages/larskristian/component/content/programming/projects/projects.html",
    cssUrl: "packages/larskristian/component/content/programming/projects/projects.css",
    publishAs: "cmp")
class ProjectsComponent {
  
  MyController controller;
  
  ProjectsComponent(this.controller) {
  }

}

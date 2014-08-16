library github.dart;

import 'package:angular/angular.dart';
import 'package:larskristian/controller.dart';

@Component(selector: "github-component",
    templateUrl: "packages/larskristian/component/content/programming/github/github.html",
    cssUrl: "packages/larskristian/component/content/programming/github/github.css",
    publishAs: "cmp")
class GithubComponent {
  
  MyController controller;
  
  GithubComponent(this.controller) {
  }

}

library footer.dart;

import 'package:angular/angular.dart';

@Component(
    selector: "lkj-footer",
    templateUrl: "packages/larskristian/component/footer/footer.html",
    cssUrl: "packages/larskristian/component/footer/footer.css", 
    publishAs: "ftr")
class MyFooter {
  
  static String createdYear = "2014";
  static String currentYear = new DateTime.now().year.toString();
  String yearString = (createdYear == currentYear) ? currentYear : createdYear + " - " + currentYear;
  
}

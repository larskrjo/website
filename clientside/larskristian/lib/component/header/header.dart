library header.dart;

import 'package:angular/angular.dart';

part 'src/headerelement.dart';

@Component(
    selector: "lkj-header", 
    templateUrl: "packages/larskristian/component/header/header.html", 
    cssUrl: "packages/larskristian/component/header/header.css", 
    publishAs: "hdr")
class MyHeader {

  @NgTwoWay("active-view")
  String activeView;
  
  @NgTwoWay("header-elements")
  List<HeaderElement> headerElements;
  
  void setCurrentActiveView(String activeView) {
    this.activeView = activeView;
  }
}

library controller.dart;

import 'package:angular/angular.dart';

import 'package:larskristian/constant/constant.dart';
import 'package:larskristian/component/header/header.dart';

@Controller(
    selector: "[lkj-controller]",
    publishAs: "ctrl"
)
class MyController {
  
  Http _http;
  
  String message = Const.LOADING_PAGE;
  String activeView = Const.NAV_HOME;
  bool elementsLoaded = false;
  List<HeaderElement> headerElements;
  
  MyController(this._http) {
    _initialize();
  }
  
  void _initialize() {
    _http.get('data/views.json')
          .then((HttpResponse response) {
            headerElements = response.data.map((d) => new HeaderElement.fromJson(d)).toList();
            elementsLoaded = true;
          })
          .catchError((e) {
            print(e);
            elementsLoaded = false;
            message = Const.ERROR_LOADING_PAGE;
          });
  }
  
}

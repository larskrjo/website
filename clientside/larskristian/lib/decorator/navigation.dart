library lavalamp.dart;

import 'dart:html' as dom;
import 'package:angular/angular.dart';

import 'package:larskristian/constant/constant.dart';

@Decorator(
    selector: '[navigation]'
)
class NavigationDecorator {
  
  final dom.Element element;
  
  NavigationDecorator(this.element) {
    dom.Element listElement = element.children.first;
    // Listen to mouse events
    listElement.onClick.listen((dom.MouseEvent e) => _switchPosition(e));
  }
  
  void _switchPosition(dom.MouseEvent e) {
    if(element.children.first.children.last is! dom.DivElement) {
      return;
    }
    dom.DivElement navigator = element.children.first.children.last;
    _moveNavigator(e.toElement.text, navigator);
  }

  void _moveNavigator(String tagName, dom.DivElement navigator) {
    switch(tagName) {
      case Const.NAV_HOME:
        navigator.style.left = Const.NAV_HOME_LEFT_POSITION;
        break;
      case Const.NAV_ABOUT:
        navigator.style.left = Const.NAV_ABOUT_LEFT_POSITION;
        break;
      case Const.NAV_PROGRAMMING:
      case Const.NAV_PROJECTS:
      case Const.NAV_GITHUB:
      case Const.NAV_GUIDES:
        navigator.style.left = Const.NAV_PROGRAMMING_LEFT_POSITION;
        break;
      case Const.NAV_CV:
        navigator.style.left = Const.NAV_CV_LEFT_POSITION;
        break;
      case Const.NAV_MYSTUFF:
        navigator.style.left = Const.NAV_MYSTUFF_LEFT_POSITION;
        break;
      default:
        navigator.style.left = Const.NAV_HOME_LEFT_POSITION;
        break;
    }
  }
}
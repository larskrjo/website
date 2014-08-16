library website_routing;

import 'package:angular/angular.dart';

import 'package:larskristian/constant/constant.dart';

void websiteRouteInitializer(Router router, RouteViewFactory views) {
  
  views.configure({
    
    Const.NAV_HOME: ngRoute(
        defaultRoute: true, 
        path: '/'+Const.NAV_HOME_LOWER, 
        viewHtml: '<home-component></home-component>'
    ),
    Const.NAV_ABOUT: ngRoute(
        path: '/'+Const.NAV_ABOUT_LOWER,
        viewHtml: '<about-component></about-component>'
    ),
    Const.NAV_PROGRAMMING: ngRoute(
        path: '/'+Const.NAV_PROGRAMMING_LOWER,
        viewHtml: '<programming-component></programming-component>'
    ),
    Const.NAV_PROJECTS: ngRoute(
        path: '/'+Const.NAV_PROJECTS_LOWER,
        viewHtml: '<projects-component></projects-component>'
    ),
    Const.NAV_GITHUB: ngRoute(
        path: '/'+Const.NAV_GITHUB_LOWER,
        viewHtml: '<github-component></github-component>'
    ),
    Const.NAV_GUIDES: ngRoute(
        path: '/'+Const.NAV_GUIDES_LOWER,
        viewHtml: '<guides-component></guides-component>'
    ),
    Const.NAV_CV: ngRoute(
        path: '/'+Const.NAV_CV_LOWER,
        viewHtml: '<cv-component></cv-component>'
    ),
    Const.NAV_MYSTUFF: ngRoute(
        path: '/'+Const.NAV_MYSTUFF_LOWER,
        viewHtml: '<mystuff-component></mystuff-component>'
     )
  });
  
}

library main.dart;

import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';
import 'package:logging/logging.dart';

import 'package:larskristian/controller.dart';

import 'package:larskristian/routing/website_router.dart';

import 'package:larskristian/component/header/header.dart';
import 'package:larskristian/component/footer/footer.dart';
import 'package:larskristian/component/content/home/home.dart';
import 'package:larskristian/component/content/about/about.dart';
import 'package:larskristian/component/content/cv/cv.dart';
import 'package:larskristian/component/content/mystuff/mystuff.dart';
import 'package:larskristian/component/content/programming/programming.dart';
import 'package:larskristian/component/content/programming/github/github.dart';
import 'package:larskristian/component/content/programming/guides/guides.dart';
import 'package:larskristian/component/content/programming/projects/projects.dart';

import 'package:larskristian/decorator/navigation.dart';

class MyAppModule extends Module {
  MyAppModule() {
    type(MyController);
    type(MyHeader);
    type(MyFooter);
    type(HomeComponent);
    type(AboutComponent);
    type(CvComponent);
    type(MyStuffComponent);
    type(ProgrammingComponent);
    type(ProjectsComponent);
    type(GithubComponent);
    type(GuidesComponent);
    type(NavigationDecorator);
    value(RouteInitializerFn, websiteRouteInitializer);
    factory(NgRoutingUsePushState, (_) => new NgRoutingUsePushState.value(false));
  }
}

void main() {
  Logger.root..level = Level.FINEST
             ..onRecord.listen((LogRecord r) { print(r.message); });
  applicationFactory().addModule(new MyAppModule()).run();
}

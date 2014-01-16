library route_homepage;

import 'package:angular/angular.dart';

class RouteHomePageInitializer implements RouteInitializer {

   init(Router router, ViewFactory view) {
      router.root
      ..addRoute(
          name: 'default_view',
          defaultRoute: true,
          enter: view('view/post/posts.html')); 
  }

}
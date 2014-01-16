library reddit_dart;

import 'package:angular/angular.dart';

import 'packages/RedditDart/controller/post/posts_controller.dart';
import 'packages/RedditDart/component/post/post_components.dart';
import 'packages/RedditDart/routing/route_homepage.dart';


class RedditDartModule extends Module {
  RedditDartModule(){
    type(PostsController);
    type(NewPostComponent);
    type(ViewPostComponent);
    type(RouteInitializer, implementedBy: RouteHomePageInitializer);
  }
}

main() {
  ngBootstrap(module: new RedditDartModule());
  // add event to the click
}
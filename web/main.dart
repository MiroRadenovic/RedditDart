library reddit_dart;

import 'package:angular/angular.dart';

import 'packages/RedditDart/controller/PostController.dart';
import 'packages/RedditDart/component/post/new_post_component.dart';
import 'packages/RedditDart/component/post/view_post_component.dart';


class RedditDartModule extends Module {
  RedditDartModule(){
    type(PostController);
    type(NewPostComponent);
    type(ViewPostComponent);
  }
}

main() {
  ngBootstrap(module: new RedditDartModule());
  // add event to the click
}
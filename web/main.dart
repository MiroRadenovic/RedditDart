library reddit_dart;

import 'package:angular/angular.dart';

//TODO: use package instead
import 'packages/RedditDart/controller/PostController.dart';
import 'packages/RedditDart/component/post/new_post_component.dart';
//import 'package:redditDart/controller/postController.dart';


class RedditDartModule extends Module {
  RedditDartModule(){
    type(PostController);
    type(NewPostComponent);
  }
}

main() {
  ngBootstrap(module: new RedditDartModule());
  // add event to the click
}
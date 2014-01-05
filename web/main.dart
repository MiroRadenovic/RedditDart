library reddit_dart;

import 'package:angular/angular.dart';

//TODO: use package instead
import '../controller/PostController.dart';
//import 'package:redditDart/controller/postController.dart';


class RedditDartModule extends Module {
  RedditDartModule(){
    type(PostController);
  }
}

main() {
  ngBootstrap(module: new RedditDartModule());
}
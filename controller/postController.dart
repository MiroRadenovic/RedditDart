library postController;

import 'package:angular/angular.dart';
import '../domain/post.dart';

@NgController(
    selector: '[post]',  // defines the tag used in the views
    publishAs: 'postController') // the name of the controller when accessing from html views
class PostController{
  Post currentPost;
  List<Post> posts;
  
  PostController(){
    posts = _loadPosts();
  }
  
  _loadPosts() {
    return [
            new Post('title1', 'desc', 'http://lorempixel.com/400/200/'),
            new Post('title1', 'desc', 'http://lorempixel.com/400/200/')
           ];
    }
  }
 

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
            new Post('new greeat image', 'this is short desc', 'http://lorempixel.com/400/200/'),
            new Post('a normal image to display', 'this is a very very very long desc', 'http://lorempixel.com/400/200/')
           ];
    }
  }
 

library postController;

import 'package:angular/angular.dart';
import '../../domain/post.dart';


@NgController(
    selector: '[post]',  // defines the tag used in the views
    publishAs: 'ctrl') // the name of the controller when accessing from html views
class PostsController{
  Post selectedPost;
  List<Post> posts;
  
  
  PostsController(){
    posts = _loadPosts();
  }
  
  voteUp(Post post){
    post.score++;
  }
  
  voteDown(Post post){
    post.score--;
  }
  
  addPost(Post post){
    posts.add(post);
  }
  
  addSample(){
    addPost( new Post('SAMPLEEEE', 'this is short desc', 'http://lorempixel.com/400/200/'));
  }
  
  _loadPosts() {
    return [
            new Post('new greeat image', 'this is short desc', 'http://lorempixel.com/400/200/'),
            new Post('a normal', 'this is a very very very', 'http://lorempixel.com/400/200/')
           ];
    }
  }
 

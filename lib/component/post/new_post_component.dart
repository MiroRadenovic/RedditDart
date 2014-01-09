library new_post_component;

import 'package:angular/angular.dart';
import '../../controller/postController.dart';
import '../../domain/post.dart';

@NgComponent(
    selector: 'manage-post-component',
    templateUrl: 'packages/RedditDart/component/post/new_post_component.html',
    publishAs: 'ctrl',
    map: const {
      'post-controller':'<=>postController',
      'edit-post':'<=>editPost'
    }
)
class NewPostComponent{
  String title;
  String description;
  String imageUrl;
  
  PostController postController; 
  Post editPost;

  void addIt(){
    postController.addPost(new Post(title,description,imageUrl));
    clear();
  }
  
  clear(){
    title = ''; 
    description = '';
    imageUrl = '';
  }
}
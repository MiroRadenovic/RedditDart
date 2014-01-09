library view_post_component;

import 'package:angular/angular.dart';
import '../../domain/post.dart';

@NgComponent(
    selector: 'view-post-component',
    templateUrl: 'packages/RedditDart/component/post/view_post_component.html',
    publishAs: 'ctrl',
    map: const {
      'selected-post':'<=>selectedPost'
    }
)
class ViewPostComponent{

  Post selectedPost;
  String newMessage;
  
  addComment() {
    selectedPost.comments.add(new PostComment(newMessage,  new DateTime.now()));
    newMessage = '';
  } 
}
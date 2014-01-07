library new_post_component;

import 'package:angular/angular.dart';

@NgComponent(
    selector: 'new-post-component',
    templateUrl: 'packages/RedditDart/component/post/new_post_component.html',
    publishAs: 'ctrl'
)
class NewPostComponent{
  String title;
  String description;
  String imageUrl;
  
  void addIt(){
    print('invoked');
  }
}
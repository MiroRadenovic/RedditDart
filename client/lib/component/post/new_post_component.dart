part of post_component;

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
  
  PostsController postController; 
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
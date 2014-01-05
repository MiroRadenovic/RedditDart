library domain;

class Post{
  String id;
  String title;
  String description;
  String imageUrl;
  List<PostComment> comments;
  
  Post(this.title,this.description,this.imageUrl, {this.comments});

}

class PostComment{
  Post post;
  String Text;
  DateTime time;
}
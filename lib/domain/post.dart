library domain;

class Post{
  String id;
  String title;
  String description;
  String imageUrl;
  List<PostComment> comments;
  int score;
  
  Post(this.title,this.description,this.imageUrl, {this.comments}){
    score = 0;
  }

}

class PostComment{
  Post post;
  String Text;
  DateTime time;
}
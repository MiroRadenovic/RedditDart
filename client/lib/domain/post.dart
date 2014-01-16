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
    if(this.comments == null) this.comments = new List<PostComment>();
  }

}

class PostComment{
  String text;
  DateTime time;
  
  PostComment(this.text, this.time);
}
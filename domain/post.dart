library domain;

class Post{
  String id;
  String title;
  String description;
  String imageUrl;
  List<PostComment> comments;
}

class PostComment{
  Post post;
  String Text;
  DateTime time;
}
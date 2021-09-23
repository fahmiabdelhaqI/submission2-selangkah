import 'package:equatable/equatable.dart';

import 'model.dart';

class Post extends Equatable {
  final String username;
  final String imageUrl;
  final String caption;
  final String location;
  // final DateTime createdAt;
  final List<Like> likes;
  final List<Comment> comments;

  Post({
    required this.username,
    required this.imageUrl,
    required this.caption,
    required this.location,
    // required this.createdAt,
    required this.likes,
    required this.comments,
  });

  @override
  List<Object> get props {
    return [
      username,
      imageUrl,
      caption,
      location,
      // createdAt,
      likes,
      comments,
    ];
  }

  @override
  bool get stringify => true;

  @override
  String toString() {
    return 'Post(username: $username, imageUrl: $imageUrl, caption: $caption, location: $location, likes: $likes, comments: $comments)';
  }
}

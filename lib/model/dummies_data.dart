// TODO: Create some dummy data

import 'model.dart';

// List<Account> accounts = [
//   Account(
//     username: username,
//     bio: bio,
//     followersCount: followersCount,
//     followingCount: followingCount,
//     postCount: postCount,
//   ),
//   Account(
//     username: username,
//     bio: bio,
//     followersCount: followersCount,
//     followingCount: followingCount,
//     postCount: postCount,
//   ),
// ];

List<Post> posts = [
  Post(
    username: 'Ahmad Bajuri',
    imageUrl:
        'https://images.freeimages.com/images/large-previews/9fe/cat-walking-1336126.jpg',
    caption:
        'The Flutter framework builds its layout via the composition of widgets, everything that you construct programmatically is a widget and these are compiled together to create the user interface.',
    location: 'Jakarta',
    // createdAt: createdAt,
    likes: [
      Like(
        username: 'username',
        profilePicUrl:
            'https://images.freeimages.com/images/large-previews/9fe/cat-walking-1336126.jpg',
      ),
    ],
    comments: [
      Comment(
        username: 'username',
        profilePicUrl: 'profilePicUrl',
        comments: 'comments',
        likes: [],
      ),
      Comment(
        username: 'username',
        profilePicUrl: 'profilePicUrl',
        comments: 'comments',
        likes: [],
      ),
    ],
  ),
];

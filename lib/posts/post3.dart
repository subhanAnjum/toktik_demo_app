import 'package:flutter/material.dart';
import 'package:toktik_flutter/utilities/networkPlayer.dart';

import '../utilities/post_template.dart';
class Post3 extends StatefulWidget {
  const Post3({Key? key}) : super(key: key);

  @override
  State<Post3> createState() => _Post3State();
}

class _Post3State extends State<Post3> {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
        userName: 'anyone',
        postDescription: 'Sleer App',
        numberOfLikes: '100K',
        numberOfComments: '101',
        numberOfShares: '50',
        userPost: NetworkPlayer(url: 'https://firebasestorage.googleapis.com/v0/b/toktik-5c03a.appspot.com/o/vidddd.mp4?alt=media&token=77f4069d-c4ce-4d97-a726-a767890f10c7',));
  }
}

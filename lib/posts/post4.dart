import 'package:flutter/material.dart';
import 'package:toktik_flutter/utilities/networkPlayer.dart';

import '../utilities/post_template.dart';
class Post4 extends StatefulWidget {
  const Post4({Key? key}) : super(key: key);

  @override
  State<Post4> createState() => _Post4State();
}

class _Post4State extends State<Post4> {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
        userName: 'anyone',
        postDescription: 'Sleer App',
        numberOfLikes: '100K',
        numberOfComments: '101',
        numberOfShares: '50',
        userPost: NetworkPlayer(url: 'https://firebasestorage.googleapis.com/v0/b/toktik-5c03a.appspot.com/o/vidCheck.mp4?alt=media&token=31373803-5e5b-42da-87ef-74a85045ccd9',));
  }
}

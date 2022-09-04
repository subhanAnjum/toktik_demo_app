import 'package:flutter/material.dart';

import '../utilities/asset_player.dart';
import '../utilities/post_template.dart';
class Post2 extends StatefulWidget {
  const Post2({Key? key}) : super(key: key);

  @override
  State<Post2> createState() => _Post2State();
}

class _Post2State extends State<Post2> {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
        userName: 'someone',
        postDescription: 'InstHaram App',
        numberOfLikes: '2.3M',
        numberOfComments: '666',
        numberOfShares: '21',
        userPost: AssetPlayer(dataSource:'assets/vid2.mp4'));
  }
}

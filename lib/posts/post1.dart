import 'package:flutter/material.dart';
import 'package:toktik_flutter/utilities/post_template.dart';


import '../utilities/asset_player.dart';

class Post1 extends StatefulWidget {
  const Post1({Key? key}) : super(key: key);

  @override
  State<Post1> createState() => _Post1State();
}

class _Post1State extends State<Post1> {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
        userName: 'subhanAnjum',
        postDescription: 'TokTik App',
        numberOfLikes: '1M',
        numberOfComments: '1122',
        numberOfShares: '420',
        userPost: AssetPlayer(dataSource:'assets/vid1.mp4'));
  }
}

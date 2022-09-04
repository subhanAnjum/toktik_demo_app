import 'package:flutter/material.dart';
import 'package:toktik_flutter/utilities/networkPlayer.dart';

import '../utilities/post_template.dart';
class Post5 extends StatefulWidget {
  const Post5({Key? key}) : super(key: key);

  @override
  State<Post5> createState() => _Post5State();
}

class _Post5State extends State<Post5> {
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

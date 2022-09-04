import 'package:flutter/material.dart';
import 'package:toktik_flutter/posts/post2.dart';
import 'package:toktik_flutter/posts/post3.dart';
import 'package:toktik_flutter/posts/post4.dart';
import 'package:toktik_flutter/posts/post5.dart';
import 'package:toktik_flutter/utilities/asset_player.dart';
import 'package:toktik_flutter/utilities/full_screen_view.dart';
import 'package:toktik_flutter/utilities/networkPlayer.dart';
import 'package:toktik_flutter/utilities/post_template.dart';

import '../posts/post1.dart';

class UserHomePage extends StatefulWidget {
  const UserHomePage({Key? key}) : super(key: key);

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  final _controller = PageController(initialPage: 0);

  final videoUrls = <String>[
    'https://firebasestorage.googleapis.com/v0/b/toktik-5c03a.appspot.com/o/vidddd.mp4?alt=media&token=77f4069d-c4ce-4d97-a726-a767890f10c7',
    'https://firebasestorage.googleapis.com/v0/b/toktik-5c03a.appspot.com/o/vidCheck.mp4?alt=media&token=31373803-5e5b-42da-87ef-74a85045ccd9',
    'https://firebasestorage.googleapis.com/v0/b/toktik-5c03a.appspot.com/o/vidddd.mp4?alt=media&token=77f4069d-c4ce-4d97-a726-a767890f10c7',
  ];
  // final videoUrls = <String>[
  //   'assets/vid1.mp4',
  //   'assets/vid2.mp4',
  //   'assets/vid3.mp4',
  //   'assets/vid4.mp4',
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: videoUrls.map((String url) {
          return PostTemplate(userName: 'userName',
              postDescription: 'postDescription',
              numberOfLikes: '1M',
              numberOfComments: '1111', numberOfShares: '123',
              userPost: NetworkPlayer(url: url,));
        }).toList(),
        // children: const [
        //   Post1(),
        //   Post2(),
        //   Post3(),
        //   Post4(),
        //   Post5()
        // ],
      ),
    );
  }
}

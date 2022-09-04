import 'package:flutter/material.dart';

import '../widgets/sidebar_button.dart';
class PostTemplate extends StatelessWidget {



  final String userName;
  final String postDescription;
  final String numberOfLikes;
  final String numberOfComments;
  final String numberOfShares;
  final userPost;

  PostTemplate({
    required this.userName,
    required this.postDescription,
    required this.numberOfLikes,
    required this.numberOfComments,
    required this.numberOfShares,
    required this.userPost,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        //userPost at the very back
        userPost,
        //username and caption
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            alignment: const Alignment(-1,1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("@$userName", style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                const SizedBox(height: 8.0,),
                RichText(text: TextSpan(
                  children: [
                    TextSpan(
                      text: postDescription,
                    ),
                    TextSpan(
                        text: " #demo #flutter",
                        style: TextStyle(fontWeight: FontWeight.bold)
                    )
                  ],

                ))
              ],
            ),
          ),
        ),
        //Likes, Comments and Shares
        Padding(padding: const EdgeInsets.all(20.0),
          child: Container(
            alignment: const Alignment(1,1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SidebarButton(icon: Icons.favorite_outline, text: numberOfLikes),
                SidebarButton(icon: Icons.chat_bubble_outline, text: numberOfComments),
                SidebarButton(icon: Icons.send_outlined, text: numberOfShares),
                const SidebarButton(icon: Icons.menu_rounded, text: ''),
              ],
            ),
          ),)
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class BasicOverlay extends StatelessWidget {
  const BasicOverlay({Key? key, required this.controller}) : super(key: key);
  final VideoPlayerController controller;

  Widget buildIndicator()=>VideoProgressIndicator(controller, allowScrubbing: false);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
        left: 0,
        right: 0,
        child: buildIndicator())

      ],
    );
  }
}

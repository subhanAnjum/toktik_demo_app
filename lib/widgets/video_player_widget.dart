import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../utilities/basic_overlay.dart';

class VideoPlayerWidget extends StatelessWidget {
  VideoPlayerWidget({Key? key, required this.controller}) : super(key: key);
  final controller;
  Widget buildVideoPlayer() => AspectRatio(
    aspectRatio: 0.5625,
      //aspectRatio: controller.value.aspectRatio,
      child: VideoPlayer(controller));
  Widget buildVideo() => Stack(children: [
        buildVideoPlayer(),
        Positioned.fill(
            child: BasicOverlay(
          controller: controller,
        ))
      ]);

  @override
  Widget build(BuildContext context) {
    return controller != null && controller.value != null
        ? Container(
            alignment: Alignment.center,
            child: buildVideo(),
          )
        : const SizedBox(
            height: 200,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
  }
}

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FullScreenView extends StatefulWidget {
  const FullScreenView({Key? key, required this.url}) : super(key: key);
  final String url;

  @override
  State<FullScreenView> createState() => _FullScreenViewState();
}

class _FullScreenViewState extends State<FullScreenView> {
  VideoPlayerController? controller;
  @override
  void initState() {
    controller = VideoPlayerController.asset(widget.url)..initialize();
    setState((){
      controller!.play();
      controller!.setLooping(true);
    });
    super.initState();
  }
  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return VideoPlayer(controller!);
  }
}

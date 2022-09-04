import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../widgets/video_player_widget.dart';

class AssetPlayer extends StatefulWidget {
  AssetPlayer({required this.dataSource});
  final String dataSource;

  @override
  State<AssetPlayer> createState() => _AssetPlayerState();
}

class _AssetPlayerState extends State<AssetPlayer> {
  VideoPlayerController? controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(widget.dataSource)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller!.play());
    //print("Controller Created");
  }

  @override
  void dispose() {
    super.dispose();
    controller!.dispose();
    //print("Controller Disposed");
  }

  @override
  Widget build(BuildContext context) {
    final isMuted = controller!.value.volume == 0;
    return Stack(children: [
      VideoPlayerWidget(controller: controller!),
      Padding(padding: const EdgeInsets.only(right: 18),
      child: Container(
        alignment: const Alignment(1,1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              icon: Icon(isMuted?Icons.volume_mute_outlined:Icons.volume_up_outlined,),
              onPressed: ()=>controller!.setVolume(isMuted?1:0),
            ),
          ],
        ),
      ),)
    ]);
  }
}

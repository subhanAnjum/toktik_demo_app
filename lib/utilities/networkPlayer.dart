import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../widgets/video_player_widget.dart';

class NetworkPlayer extends StatefulWidget {
  const NetworkPlayer({Key? key, required this.url}) : super(key: key);
  final String url;

  @override
  State<NetworkPlayer> createState() => _NetworkPlayerState();
}

class _NetworkPlayerState extends State<NetworkPlayer> {

   VideoPlayerController? controller;
   @override
   void initState() {
     controller = VideoPlayerController.network(widget.url)..initialize();
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

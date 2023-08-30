import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class UserReels extends StatelessWidget {
   UserReels({super.key});

  final FlickManager flickManager = FlickManager(
    videoPlayerController: VideoPlayerController.network(
      "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4")
  );

  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(237, 245, 165, 238),
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
            child: Icon(
              Icons.search,
              size: 40,
              color: Color.fromARGB(255, 5, 5, 248),
            ),
          )
        ],
        leading: const Icon(
          Icons.menu,
          color: Color.fromARGB(255, 17, 0, 0),
          size: 40,
        ),
        backgroundColor: Color.fromARGB(255, 236, 134, 134),
        title: const Text('My Profile'),
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: FlickVideoPlayer(flickManager: flickManager),
        ),
      ),
    );
  }
}
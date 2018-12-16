//package imports
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

//in file imports
import './video_play_logic.dart';
import './video_thumbnail.dart';



class YouTubeCardsApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        // runApp(VideoPlayerApp());
        // print("Playing Video...");
      },
      child: new ListView(
        children: <Widget>[
          youtubeThumbNail,
          youtubeThumbNail
        ],
      )
    );
  }
}



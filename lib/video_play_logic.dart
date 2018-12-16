import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerApp extends StatefulWidget {
  static _VideoPlayerAppState of(BuildContext context) =>
      context.ancestorStateOfType(const TypeMatcher<_VideoPlayerAppState>());

  @override
  _VideoPlayerAppState createState() {
    return _VideoPlayerAppState();
  }
}

class _VideoPlayerAppState extends State<VideoPlayerApp> {
  VideoPlayerController playerController;
  VoidCallback listener;

  @override
  void initState() {
    super.initState();
    listener = () {
      
    };
    setState(() {
        createVideo();
        playerController.play();
        print("Inside initState of _VideoPlayerApp");
      });
  }

  void createVideo() {
    if (playerController == null) {
      playerController = VideoPlayerController.network(
          "https:\/\/r3---sn-vgqsrned.googlevideo.com\/videoplayback?mn=sn-vgqsrned,sn-vgqsener&signature=5092306D0A71C68C2D182BAA06D67997B75627A5.B8D59A781CFD3F9DAFE0C23F71E86261CD06733C&mm=31,29&itag=18&gir=yes&key=yt6&dur=192.261&mv=m&mt=1544072965&ms=au,rdu&lmt=1401897180876823&ip=54.161.221.42&ei=Hq8IXLawDMau8gSv3ofACw&expire=1544094590&id=o-AGtziA30nOk-4PQNqzTst2ZAGIcrYYf0sqkS2WJ2eG1N&c=WEB&pl=14&initcwndbps=2962500&source=youtube&sparams=clen,dur,ei,gir,id,initcwndbps,ip,ipbits,itag,lmt,mime,mm,mn,ms,mv,pl,ratebypass,requiressl,source,expire&requiressl=yes&ratebypass=yes&clen=4620800&mime=video/mp4&fvip=2&ipbits=0")
        ..addListener(listener)
        ..setVolume(1.0)
        ..initialize()
        ..play();
    } else {
      if (playerController.value.isPlaying) {
        playerController.pause();
      } else {
        playerController.initialize();
        playerController.play();
      }
    }
  }

  @override
  void deactivate() {
    playerController.setVolume(0.0);
    playerController.removeListener(listener);
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Container(
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              child: (playerController != null
                  ? VideoPlayer(playerController)
                  : Container()),
            ),
          ),
        ));
  }
}

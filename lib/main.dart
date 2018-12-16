import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './youtube_video_play_logic.dart';
import 'app_navigation_bar.dart';


void main() => runApp(YouTube());



class YouTube extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'YouTube',
      theme: new ThemeData(primaryColor: Colors.white,
      accentColor: Colors.white12
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Row(
            children: <Widget>[
              Icon(FontAwesomeIcons.youtube, color: Colors.red,),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text('YouTube', style: TextStyle(fontWeight: FontWeight.w900, fontFamily: 'tradegothic', fontSize: 23.0),),
              ),
            ],
          ),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.videocam, color: Colors.black54,),
              onPressed: (){},
            ),
            new IconButton(
              icon: new Icon(Icons.search, color: Colors.black54,),
              onPressed: (){},
            ),
            new IconButton(
              icon: new Icon(Icons.account_circle, color: Colors.black54,),
              onPressed: (){},
            )

          ],
        ),
        body: YouTubeCardsApp(),
        bottomNavigationBar: naviBar
      ),
    );
  }

}
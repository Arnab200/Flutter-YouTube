import 'package:flutter/material.dart';

import './video_text.dart';

var youtubeThumbNail = new Card(
      child: new Column(
        children: <Widget>[
          Image.asset('assets/images/youtube_thumbnail1.jpg'),
          Center(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Container(
                    alignment: Alignment(1.0, 1.0),
                    child: Icon(
                      Icons.account_circle,
                      color: Colors.black54,
                      size: 40.0,
                    )),
                videoTitle,
                new Container(
                    child: IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {},
                  color: Colors.black54,
                ),
                ),
                new Divider(),
              ],
            ),
          )
        ],
      ),
);

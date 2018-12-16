import 'package:flutter/material.dart';

var videoTitle = Expanded(
  child: new Container(
      margin: EdgeInsets.fromLTRB(10.0, 13.0, 0.0, 0.0),
      child: new Column(
        children: <Widget>[
          Text(
            "Maroon 5 - Girls Like You ft. Cardi B",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
            maxLines: 3,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
          ),
          new Container(
            margin: EdgeInsets.only(right: 120.0),
            child: Text(
              "Maroon 5 - 1.6M views",
              style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400),
              maxLines: 3,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      )),
);

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final  naviBar = BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black54,), title: Text("Home", style: TextStyle(fontSize: 10.5 , color: Colors.black87),)),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.fire, color: Colors.black54), title: Text("Trending", style: TextStyle(fontSize: 12.0 , color: Colors.black87))),
            BottomNavigationBarItem(icon: Icon(Icons.subscriptions, color: Colors.black54,), title: Text("Subcriptions", style: TextStyle(fontSize: 12.0 ,color: Colors.black87),)),
            BottomNavigationBarItem(icon: Icon(Icons.email, color: Colors.black54,), title: Text("Inbox", style: TextStyle(fontSize: 12.0, color: Colors.black87),)),
            BottomNavigationBarItem(icon: Icon(Icons.folder, color: Colors.black54,), title: Text("Library", style: TextStyle(fontSize: 12.0, color: Colors.black87),))
          ],
          type: BottomNavigationBarType.fixed,
        );
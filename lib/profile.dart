import 'package:flutter/material.dart';
import 'package:practice_ui/main.dart';

class Profile extends StatelessWidget {
  final Person title;

  Profile({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: <Widget>[
            Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            Expanded(
                child: Center(
              child: Text(
                "Team",
                style: TextStyle(color: Colors.black),
              ),
            )),
            Icon(
              Icons.add_circle,
              color: Colors.deepPurple,
              size: 35.0,
            )
          ],
        ),
      ),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[],
          )
        ],
      )),
    );
  }
}

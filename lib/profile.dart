import 'package:flutter/material.dart';
import 'package:practice_ui/models.dart';

class Profile extends StatelessWidget {
  final Person title;

  Profile({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              height: 64.0,
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  Expanded(
                    child: Center(
                      child: Text(""),
                    ),
                  ),
                  Text(
                    "Revoke",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0),
                  )
                ],
              ),
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(top: 50.0),
                  width: MediaQuery.of(context).size.width - 50.0,
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 80.0,
                        ),
                        Text(
                          "Victoria Ferguson",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0),
                        ),
                        SizedBox(height: 3.0),
                        Text(
                          "victoria@ferguson.eu",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Role",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0),
                                  ),
                                  SizedBox(
                                    height: 3.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Admin",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0),
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Icon(
                                        Icons.mode_edit,
                                        color: Colors.black,
                                        size: 15.0,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Team",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0),
                                  ),
                                  SizedBox(
                                    height: 3.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Product",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0),
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Icon(
                                        Icons.mode_edit,
                                        color: Colors.black,
                                        size: 15.0,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.mail),
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.comment,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.greenAccent,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.call, color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                      ],
                    ),
                  ),
                ),
                Stack(
                  alignment: Alignment.topRight,
                  children: <Widget>[
                    new Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: new BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: new AssetImage("assets/male.png"),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Icon(
                        Icons.check_circle,
                        size: 22.0,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Text(
                "victoria@ferguson.eu",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}

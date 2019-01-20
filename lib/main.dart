import 'package:flutter/material.dart';
import 'package:practice_ui/profile.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage() : super();

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Person> admins = new List();
  List<Person> employees = new List();

  initState() {
    super.initState();
    Person admin = new Person();
    admin.name = "Mike";
    admin.role = "Admin";
    admin.img = "male.png";
    admin.dept = "Management";
    admins.add(admin);

    admin = new Person();
    admin.name = "harvey";
    admin.role = "Admin";
    admin.img = "male.png";
    admin.dept = "Legal";
    admins.add(admin);

    admin = new Person();
    admin.name = "Donna";
    admin.role = "Admin";
    admin.img = "female.png";
    admin.dept = "Operation";
    admins.add(admin);

    // Employees
    admin = new Person();
    admin.name = "Rose";
    admin.role = "Employee";
    admin.img = "female.png";
    admin.dept = "Sales";
    employees.add(admin);

    admin = new Person();
    admin.name = "Jack";
    admin.role = "Employee";
    admin.img = "male.png";
    admin.dept = "IT";
    employees.add(admin);
  }

  Card _getPersonCard(Person data) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 5.0,
      child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: <Widget>[
              Stack(
                alignment: Alignment.topRight,
                children: <Widget>[
                  new Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: new BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: new AssetImage("assets/${data.img}"),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Icon(
                      Icons.check_circle,
                      size: 18.0,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      data.name,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      data.role,
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      data.dept,
                      style: TextStyle(color: Colors.grey, fontSize: 15.0),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }

  Column _getAdminList(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, top: 12.0, bottom: 12.0),
              child: new Text(
                'Admin',
                style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0),
              ),
            ),
          ],
        ),
        Column(
          children: admins.map((data) {
            return GestureDetector(
              child: _getPersonCard(data),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(title: data),
                  ),
                );
              },
            );
          }).toList(),
        )
      ],
    );
  }

  Column _getEmployeeList(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, top: 12.0, bottom: 12.0),
              child: new Text(
                'Employee',
                style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0),
              ),
            ),
          ],
        ),
        Column(
          children: employees.map((data) {
            return _getPersonCard(data);
          }).toList(),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
          )),
      body: new Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: new ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: new Text(
                      'Suggestion invitation',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Suggestion invitation',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              'angela@mark.eu',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.cancel,
                        size: 38.0,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.check_circle,
                        size: 38.0,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ),
              _getAdminList(context),
              _getEmployeeList(context),
            ],
          ),
        ),
      ),
    );
  }
}

class Person {
  String role;
  String name;
  String img;
  String dept;
}

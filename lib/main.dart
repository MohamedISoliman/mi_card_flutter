import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              avatar(),
              name(),
              job(),
              SizedBox(
                height: 20,
                width: 180,
                child: Divider(
                  thickness: 2,
                  color: Colors.white,
                ),
              ),
              phoneContainer(),
              mailContainer()
            ],
          ),
        ),
      ),
    ),
  );
}

Card phoneContainer() {
  return Card(
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    color: Colors.white,
    child: Padding(
      child: phoneItem(),
      padding: EdgeInsets.all(10),
    ),
  );
}

Card mailContainer() {
  return Card(
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    color: Colors.white,
    child: Padding(
      child: mailItem(),
      padding: EdgeInsets.all(10),
    ),
  );
}

Row mailItem() {
  return Row(
    children: <Widget>[
      Icon(
        Icons.mail_outline,
        color: Colors.deepPurpleAccent,
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        'mibrahim.dev@gmail.com',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Lobster',
          color: Colors.deepPurpleAccent,
          fontSize: 15,
        ),
      )
    ],
  );
}

Row phoneItem() {
  return Row(
    children: <Widget>[
      Icon(
        Icons.phone,
        color: Colors.deepPurpleAccent,
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        '+96560407239',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Lobster',
          color: Colors.deepPurpleAccent,
          fontSize: 15,
        ),
      )
    ],
  );
}

Text job() {
  return Text(
    'Flutter Developer'.toUpperCase(),
    textAlign: TextAlign.center,
    style: TextStyle(
        fontFamily: 'FjallaOne',
        color: Colors.white70,
        letterSpacing: 5,
        fontWeight: FontWeight.normal,
        fontSize: 18),
  );
}

CircleAvatar avatar() {
  return CircleAvatar(
    radius: 50,
    backgroundImage: AssetImage('images/avatar.jpg'),
    backgroundColor: Colors.red,
  );
}

Text name() {
  return Text(
    "Mohamed Ibrahim",
    style: TextStyle(
      fontSize: 25,
      fontFamily: 'Lobster',
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
    textAlign: TextAlign.center,
  );
}

Container item() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
    height: 100,
    width: 100,
    color: Colors.blue,
    child: Text('Hello'),
  );
}

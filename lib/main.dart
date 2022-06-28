import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

var myAvatar = CircleAvatar(
  radius: 50.0,
  backgroundImage: AssetImage('assets/images/me.jpg'),
);

var name = Text('Juan Cantero',
    style:
        TextStyle(fontSize: 40.0, color: Colors.white, fontFamily: 'Pacifico'));

var title = Text(
  'Flutter Developer'.toUpperCase(),
  style: TextStyle(
      fontSize: 20.0,
      color: Colors.teal.shade100,
      letterSpacing: 2.5,
      fontWeight: FontWeight.bold),
);

var phone = Card(
    color: Colors.white,
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
    child: ListTile(
        leading: Icon(Icons.phone, color: Colors.teal),
        title: Text(
          '+4398234234',
          style: TextStyle(fontSize: 20, color: Colors.teal.shade900),
        )));

var email = Card(
  color: Colors.white,
  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
  child: ListTile(
    leading: Icon(Icons.email, color: Colors.teal),
    title: Text(
      'juan.cantero@outlook.com',
      style: TextStyle(fontSize: 20, color: Colors.teal.shade900),
    ),
  ),
);

var line = SizedBox(
  height: 20,
  width: 150,
  child: Divider(color: Colors.teal.shade100),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[myAvatar, name, title, line, phone, email],
          ),
        ),
      ),
    );
  }
}

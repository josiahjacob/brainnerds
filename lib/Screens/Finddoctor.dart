import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery
                .of(context)
                .size
                .height,
            width: MediaQuery
                .of(context)
                .size
                .width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Find Doctor.png"),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 210.0, 20.0, 20.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.location_on), onPressed: null),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(right: 20, left: 10),
                        child: TextField(
                          decoration:
                          InputDecoration(hintText: 'Select Area'),
                        )))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 270.0, 20.0, 20.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.search), onPressed: null),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(right: 20, left: 10),
                        child: TextField(
                          decoration:
                          InputDecoration(hintText: 'Search for doctors'),
                        )))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

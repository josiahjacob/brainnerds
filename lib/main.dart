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
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bgimg.png"),
                    fit: BoxFit.cover)),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 100, 20.0, 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    "DR MED",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Your Personalised medical assistant",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'SourceSansPro',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 300,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.pinkAccent,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child:
                        Text('Sign In', style: TextStyle(color: Colors.white)),
                    color: Colors.blueAccent,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

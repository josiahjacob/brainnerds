import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main(){runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( home: HomePage(),
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
                    image: AssetImage("assets/images/Find Hospital (1).png"),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 350.0, 20.0, 20.0),
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
            padding: const EdgeInsets.fromLTRB(145.0, 600.0, 150.0, 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                height: 50,
                width: 800,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.indigo,
                  child: Text(
                    'Search',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MiCard extends StatefulWidget {
  @override
  _MiCardState createState() => _MiCardState();
}

class _MiCardState extends State<MiCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: new AssetImage('images/photo1.jpg'),
                ),
                new Text("Chea Nakhim",
                  style: new TextStyle(
                      fontSize: 30.0,
                      fontFamily: "Pacifico",
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                new Text("DEVELOPER FLUTTER",
                    style: new TextStyle(
                      fontFamily: "SourceSansPro",
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                      color: Colors.teal.shade50,
                    )),
                new SizedBox(height: 8.0),
                new SizedBox(
                  width: 150.0,
                  child: new Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                new SizedBox(height: 16.0,),
                new Card(
                    margin: EdgeInsets.symmetric(horizontal: 16.0),
                    child: new ListTile(
                      leading: new Icon(Icons.phone,color: Colors.teal),
                      title: new Text("+885 94 36662"),
                    )
                ),
                new SizedBox(height: 16.0,),
                new Card(
                    margin: EdgeInsets.symmetric(horizontal: 16.0),
                    child: new ListTile(
                      leading: new Icon(Icons.email,color: Colors.teal),
                      title: new Text("chea.nakim.it@gmail.com"),
                    )
                )
              ],
            ),
          )
      ),
    );
  }
}

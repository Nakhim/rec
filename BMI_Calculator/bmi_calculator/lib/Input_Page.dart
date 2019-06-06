import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("BIM CALULATOR"),
        centerTitle: true,
      ),
      body: new SafeArea(
         child: new Column(
           children: <Widget>[
             new Expanded(
                 child: new Row(
                   children: <Widget>[
                     new CardUtils(color: Color(0xFF1D1E33)),
                     new CardUtils(color: Color(0xFF1D1E33)),
                   ],
                 )
             ),
             new CardUtils(color: Color(0xFF1D1E33)),
             new Expanded(
                 child: new Row(
                   children: <Widget>[
                     new CardUtils(color: Color(0xFF1D1E33)),
                     new CardUtils(color: Color(0xFF1D1E33)),
                   ],
                 )
             ),
             new Container(
               margin: EdgeInsets.only(top:10.0),
               width: double.infinity,
               color: Color(0xFFEB1555),
               height: kBottomNavigationBarHeight,
             )
           ],
         )
      ),
    );
  }
}

class CardUtils extends StatelessWidget {
  CardUtils({@required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          margin: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16.0),
          ),
        )
    );
  }
}
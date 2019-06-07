import 'package:flutter/material.dart';

class IconContan extends StatelessWidget {
  IconContan({this.icon, this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(height: 10.0,),
        new Text(
          label,
          style: new TextStyle(
              color: Color(0xFF8D8E89),
              fontSize: 18.0
          ),
        )
      ],
    );
  }
}

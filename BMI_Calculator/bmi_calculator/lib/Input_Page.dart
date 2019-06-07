import 'package:bmi_calculator/icon_contan.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
const Color inactiveCardColor = Color(0xFF111328);
const Color activeCardColor = Color(0xFF1D1E33);
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  var maleColor = inactiveCardColor;
  var femaleColor = inactiveCardColor;
  void _updateColor(String gender){
    if(gender == "male"){
      if(maleColor == inactiveCardColor){
        maleColor = activeCardColor;
        femaleColor= inactiveCardColor;
      }else {
        maleColor = inactiveCardColor;
      }
    }

    if(gender == "female"){
      if(femaleColor == inactiveCardColor){
        femaleColor = activeCardColor;
        maleColor= inactiveCardColor;
      }else {
        femaleColor = inactiveCardColor;
      }
    }
  }
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
                     Expanded(
                       child: GestureDetector(
                         onTap: (){
                           setState(() {
                              _updateColor("male");
                           });
                         },
                         child: new ReusableCard(
                             color: maleColor,
                             childCard: IconContan(icon: FontAwesomeIcons.mars,label: "MALE",),
                         ),
                       ),
                     ),
                     Expanded(
                       child: GestureDetector(
                         onTap: (){
                           setState(() {
                             _updateColor("female");
                           });
                         },
                         child: new ReusableCard(
                           color: femaleColor,
                           childCard: IconContan(
                             icon: FontAwesomeIcons.venus,
                             label: "FEMALE",
                           ),),
                       ),
                     ),
                   ],
                 )
             ),
             Expanded(
               child: new ReusableCard(
                   color: Color(0xFF1D1E33),

               ),
             ),
             new Expanded(
                 child: new Row(
                   children: <Widget>[
                     Expanded(child: new ReusableCard(color: Color(0xFF1D1E33))),
                     Expanded(child: new ReusableCard(color: Color(0xFF1D1E33))),
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


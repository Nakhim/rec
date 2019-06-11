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
enum Gender {male,female}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int hight = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("BIM CALULATOR"),
        centerTitle: true,
      ),
      body: new SafeArea(
         child: new Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: <Widget>[
             new Expanded(
                 child: new Row(
                   children: <Widget>[
                     Expanded(
                       child: GestureDetector(
                         onTap: (){
                           setState(() {
                             selectedGender = Gender.male;
                           });
                         },
                         child: new ReusableCard(
                             color: selectedGender == Gender.male
                                 ? activeCardColor
                                 : inactiveCardColor,
                             childCard: IconContan(icon: FontAwesomeIcons.mars,label: "MALE",),
                         ),
                       ),
                     ),
                     Expanded(
                       child: GestureDetector(
                         onTap: (){
                           setState(() {
                           selectedGender = Gender.female;
                           });
                         },
                         child: new ReusableCard(
                           color: selectedGender == Gender.female
                           ? activeCardColor
                           : inactiveCardColor,
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
                 childCard: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Text("HIGHT",style: new TextStyle(
                         color: Color(0xFF8D8E89),
                         fontSize: 18.0
                     ),),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.baseline,
                       textBaseline: TextBaseline.alphabetic,
                       children: <Widget>[
                         Text(
                           hight.toString(),
                           style: new TextStyle(
                             fontSize: 40.0,
                               fontWeight: FontWeight.bold
                           ),
                         ),
                         Text("cm",style: TextStyle(
                           fontSize: 20.0,
                           fontWeight: FontWeight.bold
                         ),)
                       ],
                     ),
                     SliderTheme(
                       data: SliderTheme.of(context).copyWith(
                         activeTrackColor: Colors.white,
                         thumbColor: Color(0xFFEB1555),
                         overlayColor: Color(0x29EB1555) ,
                         thumbShape: RoundSliderThumbShape(),
                       ),
                       child: Slider(
                           value: hight.toDouble(),
                           max: 220.0,
                           min: 120.0,
                           onChanged:(value){
                            setState(() {
                              hight = value.round();
                            });
                           }
                       ),
                     )
                   ],
                 ),

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


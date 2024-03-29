import 'package:flutter/material.dart';
import 'package:quizzler/questionStore.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
void main() => runApp(Quizzler());
QuestionStore question =  QuestionStore();
class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> listIcon = [];
  void _checkAnswer(bool answer){
    setState(() {
      if(!(question.getIndexOfQuestion() < listIcon.length)) {
        if (answer == question.getCorrectAnswer()) {
          print("get rigth answer ${question.getIndexOfQuestion()} ");
          listIcon.add(Icon(Icons.check, color: Colors.green,));
        } else {
          listIcon.add(Icon(Icons.close, color: Colors.red,));
          print("get not correct answer");
        }
        question.nextQuestion();
      }else {
        confim();
      }
    });
  }

  void confim(){
     Alert(
      context: context,
      type: AlertType.error,
      title: "Waning",
      desc: "The Quiz is already Thank you ! check again ? .",
      buttons: [
        DialogButton(
          child: Text(
            "OK",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: (){
            setState(() {
              listIcon = [];
              question.setIndexOfQuestion(0);
            });
            Navigator.pop(context);
          },
          width: 120,
        )
      ],
    ).show();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                question.getQuestion(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                _checkAnswer(true);
                },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                _checkAnswer(false);
                },
            ),
          ),
        ),
        new Wrap(
          direction: Axis.horizontal,
          children: listIcon,
        ),
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/

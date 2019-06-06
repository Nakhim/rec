import 'package:quizzler/question.dart';

class QuestionStore{
  int indexOfQuestion = 0;

  QuestionStore();

  List<Question> _listQuestion = [
    Question('Flutter Develoment by Google', true),
    Question('Windows buile by Microsoft by Google', true),
    Question('OS App develoment by Microsoft', false)
  ];

  void nextQuestion(){
    if(indexOfQuestion < _listQuestion.length - 1){
      indexOfQuestion++;
    }
  }

  int getIndexOfQuestion(){
    return indexOfQuestion;
  }

  void setIndexOfQuestion(int index){
    this.indexOfQuestion = index;
  }

  String getQuestion(){
    return _listQuestion[indexOfQuestion].questionTex;
  }

  bool getCorrectAnswer(){
    return _listQuestion[indexOfQuestion].questionAnswer;
  }
}
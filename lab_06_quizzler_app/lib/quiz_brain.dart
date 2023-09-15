import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(questionText: 'Cau Hoi So 1', questionAnswer: true),
    Question(questionText: 'Cau Hoi So 2', questionAnswer: false),
    Question(questionText: 'Cau Hoi So 3', questionAnswer: true),
    Question(questionText: 'Cau Hoi So 4', questionAnswer: false),
    Question(questionText: 'Cau Hoi So 5', questionAnswer: true),
    Question(questionText: 'Cau Hoi So 6', questionAnswer: false),
    Question(questionText: 'Cau Hoi So 7', questionAnswer: true),
    Question(questionText: 'Cau Hoi So 8', questionAnswer: false),
    Question(questionText: 'Cau Hoi So 9', questionAnswer: true),
    Question(questionText: 'Cau Hoi So 10', questionAnswer: false),
    Question(questionText: 'Cau Hoi So 11', questionAnswer: true),
  ];

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void resetQuestion() {
    _questionNumber = 0;
  }
}

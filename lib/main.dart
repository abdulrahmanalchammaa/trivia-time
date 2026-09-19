import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [{
      'questionText': '\n \n \n \n click down and lets start',
      'answers': [
        {'text': 'Start', 'score': 0},
      ],
    },
    {
      'questionText': 'Solve short fun Questions\n Are You ready?',
      'answers': [
        {'text': 'Click To Play', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the capital of Australia?',
      'answers': [
        {'text': 'Sydney', 'score': 0},
        {'text': 'Melbourne', 'score': 0},
        {'text': 'Canberra', 'score': 1},
        {'text': 'Perth', 'score': 0},
      ],
    },
    {
      'questionText': 'Who painted the famous Mona Lisa?',
      'answers': [
        {'text': 'Leonardo da Vinci', 'score': 1},
        {'text': 'Pablo Picasso', 'score': 0},
        {'text': 'Vincent van Gogh', 'score': 0},
        {'text': 'Claude Monet', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the largest mammal in the world?',
      'answers': [
        {'text': 'Elephant', 'score': 0},
        {'text': 'Blue Whale', 'score': 1},
        {'text': 'Giraffe', 'score': 0},
        {'text': 'Hippopotamus', 'score': 0},
      ],
    },
    {
      'questionText': 'Which planet is known as the "Morning Star"?',
      'answers': [
        {'text': 'Mars', 'score': 0},
        {'text': 'Venus', 'score': 1},
        {'text': 'Jupiter', 'score': 0},
        {'text': 'Saturn', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the chemical symbol for gold?',
      'answers': [
        {'text': 'Au', 'score': 1},
        {'text': 'Ag', 'score': 0},
        {'text': 'Cu', 'score': 0},
        {'text': 'Fe', 'score': 0},
      ],
    },
    {
      'questionText': 'Who wrote the novel "To Kill a Mockingbird"?',
      'answers': [
        {'text': 'Harper Lee', 'score': 1},
        {'text': 'Mark Twain', 'score': 0},
        {'text': 'Charles Dickens', 'score': 0},
        {'text': 'J.K. Rowling', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the tallest mountain in the world?',
      'answers': [
        {'text': 'Mount Everest', 'score': 1},
        {'text': 'K2', 'score': 0},
        {'text': 'Kangchenjunga', 'score': 0},
        {'text': 'Makalu', 'score': 0},
      ],
    },
    {
      'questionText': 'Which element is represented by the chemical symbol "H"?',
      'answers': [
        {'text': 'Hydrogen', 'score': 1},
        {'text': 'Helium', 'score': 0},
        {'text': 'Carbon', 'score': 0},
        {'text': 'Oxygen', 'score': 0},
      ],
    },
    {
      'questionText': 'Who was the first woman to win a Nobel Prize?',
      'answers': [
        {'text': 'Marie Curie', 'score': 1},
        {'text': 'Mother Teresa', 'score': 0},
        {'text': 'Jane Goodall', 'score': 0},
        {'text': 'Rosalind Franklin', 'score': 0},
      ],
    },
    {
      'questionText': 'Which planet is known as the "Red Planet"?',
      'answers': [
        {'text': 'Mars', 'score': 1},
        {'text': 'Venus', 'score': 0},
        {'text': 'Jupiter', 'score': 0},
        {'text': 'Saturn', 'score': 0},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF09EEF6),
        appBar: AppBar(
          title: Text('Quizz Time'),
          backgroundColor: Color(0xFF0C10EF),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: _questionIndex < _questions.length
              ? Quiz(
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex,
            questions: _questions,
          ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}

import 'package:flutter/material.dart';
import 'question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _isCorrect = false;
  var _questionIndex = 0;

  void _onPressTom() {
    print('TOMHANK');
    _questionIndex = _questionIndex + 1;
    setState(() {
      _isCorrect = true;
      _questionIndex = 0;
    });
    print('Index = $_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['Who IS 111?', 'Who IS 222?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GPX'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            RaisedButton(
                child: Text('SIT'),
                onPressed: () {
                  print('aaaaaa');
                  setState(() {
                    _isCorrect = false;
                  });
                }),
            RaisedButton(
              child: Text('AAA'),
              onPressed: () {
                print('fffff');
                setState(() {
                  _isCorrect = false;
                });
              },
            ),
            RaisedButton(
              child: Text('BBB'),
              onPressed: _onPressTom,
            ),
            _isCorrect ? Question('True') : Text('False')
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:question_solver/Answerabout.dart';

void main() => runApp(Answer());

class Answer extends StatelessWidget {
  const Answer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Answer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            ButtonTheme(
                minWidth: 350.0,
                height: 70.0,
                child: RaisedButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (_)=>AnswerAbout()));
                  },
                  color: Colors.grey[300],
                  splashColor: Colors.grey,
                  child: Text('Q1: 선형대수학 Linearly Independent에 관하여...',
                      style: TextStyle(fontSize: 15.0)),)
            ),
            SizedBox(
              height: 20,
            ),
            ButtonTheme(
                minWidth: 350.0,
                height: 70.0,
                child: RaisedButton(
                  onPressed: (){
                    print('Q2 is clicked');
                  },
                  color: Colors.grey[300],
                  splashColor: Colors.grey,
                  child: Text('Q2: 선형대수학 Invertible에 대해...',
                      style: TextStyle(fontSize: 15.0)),)
            ),
            SizedBox(
              height: 20,
            ),
            ButtonTheme(
                minWidth: 350.0,
                height: 70.0,
                child: RaisedButton(
                  onPressed: (){
                    print('Q3 is clicked');
                  },
                  color: Colors.grey[300],
                  splashColor: Colors.grey,
                  child: Text('Q3: Chapter 1.4 Theorem 4에 관하여...',
                      style: TextStyle(fontSize: 15.0)),)
            ),
          ],
        ),
      ),
    );
  }
}

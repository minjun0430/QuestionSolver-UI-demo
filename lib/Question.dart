import 'package:flutter/material.dart';

void main() => runApp(Question());

class Question extends StatelessWidget {
  const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question'),
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
                height: 50.0,
                child: RaisedButton.icon(
                  onPressed: (){
                    print('Add Question is clicked');
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  icon: Icon(Icons.add, color: Colors.black),
                  color: Colors.blue[300],
                  splashColor: Colors.grey,
                  label: Text('Add my Question',
                      style: TextStyle(fontSize: 15.0)),)
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(8, 20, 8, 12),
              color: Colors.grey[300],
              height: 70,
              width: 350,
              child: Text('Q1: 선형대수학 Linearly Independent에 관하여...'),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(8, 20, 8, 12),
              color: Colors.grey[300],
              height: 70,
              width: 350,
              child: Text('Q2: 선형대수학 Invertible에 대해...'),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(8, 20, 8, 12),
              color: Colors.grey[300],
              height: 70,
              width: 350,
              child: Text('Q3: Chapter 1.4 Theorem 4에 관하여...'),
            ),
          ],
        ),
      ),
    );
  }
}

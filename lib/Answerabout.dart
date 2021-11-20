import 'package:flutter/material.dart';

void main() => runApp(AnswerAbout());

class AnswerAbout extends StatelessWidget {
  const AnswerAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Q1'),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              //color: Colors.grey[300],
              height: 40,
              color: Colors.grey[200],
              child: Text('Q1: 선형대수학 Linearly Independent에 관하여...'),
            ),
            Container(
              padding: EdgeInsets.all(8),
              //color: Colors.grey[300],
              height: 40,
              color: Colors.grey[200],
              child: Text('  Linearly Independent정의가 뭔가요?'),
            ),
            SizedBox(
              height: 10,
            ),
            ButtonTheme(
                minWidth: 350.0,
                height: 50.0,
                child: RaisedButton.icon(
                  onPressed: (){
                    print('Add Answer is clicked');
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  icon: Icon(Icons.add, color: Colors.black),
                  color: Colors.blue[300],
                  splashColor: Colors.grey,
                  label: Text('Add my Answer',
                      style: TextStyle(fontSize: 15.0)),)
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(8),
              //color: Colors.grey[300],
              height: 60,
              child: Text('A1: Homogeneous System이 trivial solution만 가질 때 linearly independent라고 합니다'),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(8),
              //color: Colors.grey[300],
              height: 60,
              child: Text('A2: Homogeneous System이 free variable이 없을 때 입니다'),
            ),
          ],
        ),
      ),
    );
  }
}

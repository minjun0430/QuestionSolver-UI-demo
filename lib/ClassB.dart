import 'package:flutter/material.dart';

void main() => runApp(ClassB());

class ClassB extends StatelessWidget {
  const ClassB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Class B'),
        ),
        body: Center(
          child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                ButtonTheme(
                    minWidth: 350.0,
                    height: 80.0,
                    child: RaisedButton.icon(
                      onPressed: (){
                        print('Question button is clicked');
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0))),
                      icon: Icon(Icons.add, color: Colors.black),
                      color: Colors.green[400],
                      splashColor: Colors.grey,
                      label: Text('Question',
                          style: TextStyle(fontSize: 20.0)),)
                ),
                SizedBox(
                  height: 30,
                ),
                ButtonTheme(
                    minWidth: 350.0,
                    height: 80.0,
                    child: RaisedButton.icon(
                      onPressed: (){
                        print('Answer button is clicked');
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0))),
                      icon: Icon(Icons.add, color: Colors.black),
                      color: Colors.purple[300],
                      splashColor: Colors.grey,
                      label: Text('Answer',
                          style: TextStyle(fontSize: 20.0)),)
                ),
              ]
          ),
        )
    );
  }
}

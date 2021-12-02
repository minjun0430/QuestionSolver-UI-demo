import 'package:flutter/material.dart';
import 'package:question_solver/ClassA.dart';
import 'package:question_solver/ClassB.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Question Solver V1.0.0',
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question Solver'),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search button is clicked');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/puang.jpg'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/cau.png'),
                  backgroundColor: Colors.white,
                )
              ],
              accountName: Text('MinJun'),
              accountEmail: Text('mj043000@naver.com'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                  color: Colors.blue[700],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0)
                  )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,
                  color: Colors.grey[850]
              ),
              title: Text('Home'),
              onTap: () {
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings,
                  color: Colors.grey[850]
              ),
              title: Text('Settings'),
              onTap: () {
                print('Settings is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer,
                  color: Colors.grey[850]
              ),
              title: Text('About'),
              onTap: () {
                print('About is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonTheme(
                  minWidth: 170.0,
                  height: 50.0,
                  child: RaisedButton.icon(
                    onPressed: (){
                      print('Add button is clicked');
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    icon: Icon(Icons.add, color: Colors.black),
                    color: Colors.blue[400],
                    splashColor: Colors.grey,
                    label: Text('Add',
                        style: TextStyle(fontSize: 15.0)),
                  ),
                ),
                SizedBox(
                  width: 15
                ),
                ButtonTheme(
                  minWidth: 170.0,
                  height: 50.0,
                  child: RaisedButton.icon(
                    onPressed: (){
                      print('Find button is clicked');
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    icon: Icon(Icons.search, color: Colors.black),
                    color: Colors.blue[400],
                    splashColor: Colors.grey,
                    label: Text('Find',
                        style: TextStyle(fontSize: 15.0)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ButtonTheme(
                minWidth: 350.0,
                height: 80.0,
                child: RaisedButton.icon(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (_)=>ClassA()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  icon: Icon(Icons.android, color: Colors.black),
                  color: Colors.yellow[600],
                  splashColor: Colors.grey,
                  label: Text('Class A: ㅇㅇㅇ 교수님',
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
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (_)=>ClassB()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  icon: Icon(Icons.camera, color: Colors.black),
                  color: Colors.orange[400],
                  splashColor: Colors.grey,
                  label: Text('Class B: ㅁㅁㅁ 교수님',
                      style: TextStyle(fontSize: 20.0)),)
            ),
          ],
        ),
      )
    );
  }
}
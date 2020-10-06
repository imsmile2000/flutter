import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = '동내친구';
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.amber
      ),
      home: MainPage(title: '메인 페이지'),
    );
  }
}

class MainPage extends StatelessWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('동내친구'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                height: 300,
                width: 300,
                child: Image.asset('images/elephant.png'),
            ),
            Container(
              height: 100,
              width: 300,
              child: Center(child:Text(
                  '시작하기',
                  style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize:40,
                    color:Colors.deepOrangeAccent,
                  ),
              ),
            ),
      ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(color:Colors.amber[300]),
              child: Center(child:Text(
                'Start!',
                style:TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize:40,
                  color:Colors.white,
                ),
            ),
            ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
      ),
    );
  }
}
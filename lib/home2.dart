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
              height: 250,
              width: 250,
              child: Image.asset('images/elephant2.png'),
            ),
            Container(
              height: 45,
              width: 300,
              decoration:  BoxDecoration(color:Colors.grey[300],borderRadius:BorderRadius.all(Radius.circular(10))),
              child: Row(children:<Widget>[
                Icon(Icons.perm_identity,size:30.0),
              ]),
            ),
            Container(
              height: 45,
              width: 300,
              decoration: BoxDecoration(color:Colors.grey[300],borderRadius:BorderRadius.all(Radius.circular(10))),
              child:Row(children:<Widget>[
                Icon(Icons.vpn_key,size:30.0),
            ]),
           ),
            Container(
              height: 40,
              width: 250,
              decoration: BoxDecoration(color:Colors.grey[300],borderRadius:BorderRadius.all(Radius.circular(10))),
              child:Center(child:Text(
                  '로그인',
                  style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize:20,
                  ),
              ),
              ),
            ),
            Container(
              height: 40,
              width: 250,
              child:Center(child:Text(
                '아직 회원이 아니신가요? 회원가입',
                style:TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize:17,
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
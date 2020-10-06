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
              height: 500,
              width: 300,
              decoration: BoxDecoration(color:Colors.grey[300],borderRadius:BorderRadius.all(Radius.circular(10))),
              child:Center(child:Text(
                '잠깐!\n\n결제하기가 아니라 펀딩하기입니다.\n바로 결제되지 않으며, 펀딩 종료 후에는 결제를 취소할 수 없습니다.\n펀딩이 종료되고 성공할 경우 (마감일다음날)에 결제가 진행됩니다.\n상품은 바로 배송되는 것이 아니라 펀딩 성공 후 상품이 준비되어 배송됩니다.\n이때 발송 관련 정보는 펀딩진행자와의 오픈채팅방을 통해 확인이 가능합니다.',
                style:TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize:15,
                ),
                textAlign:TextAlign.center,
              ),
              ),
            ),
      ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
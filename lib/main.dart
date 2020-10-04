import 'package:flutter/material.dart';
import 'package:flutter_app/pages/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = '동내친구';
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow),
      title: title,
      home: MainPage(title: '메인 페이지'),
    );
  }
}

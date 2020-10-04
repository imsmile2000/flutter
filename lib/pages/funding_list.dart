import 'package:flutter/material.dart';

/// 펀딩 리스트 페이지
class FundingListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = '현재 진행중인 펀딩';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.chevron_right),
              title: Text('양파     (1/4)'),
            ),
            ListTile(
              leading: Icon(Icons.chevron_right),
              title: Text('계란     (3/10)'),
            ),
            ListTile(
              leading: Icon(Icons.chevron_right),
              title: Text('당근     (2/6)'),
            ),
            ListTile(
              leading: Icon(Icons.chevron_right),
              title: Text('물 2L'),
            ),
            ListTile(
              leading: Icon(Icons.chevron_right),
              title: Text('3분 카레'),
            ),
          ],
        ),
      ),
    );
  }
}

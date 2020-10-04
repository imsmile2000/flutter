import 'package:flutter/material.dart';
import 'package:flutter_app/pages/funding.dart';
import 'package:flutter_app/pages/funding_list.dart';
import 'package:flutter_app/pages/my_menu.dart';

/// 메인 페이지
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.attach_money,
                color: Colors.grey[850],
              ),
              title: Text('현재 진행 중인 펀딩'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FundingListPage(),
                  ),
                );
              },
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(
                Icons.bookmark_border,
                color: Colors.grey[850],
              ),
              title: Text('펀딩 진행하기'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FundingPage(),
                  ),
                );
              },
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(
                Icons.perm_identity,
                color: Colors.grey[850],
              ),
              title: Text('my 메뉴'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyMenuPage(),
                  ),
                );
              },
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}

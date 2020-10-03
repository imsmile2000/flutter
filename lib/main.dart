import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = '동내친구';
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.yellow
      ),
      home: MainPage(title: '메인 페이지'),
    );
  }
}

  class MainPage extends StatelessWidget {
  MainPage({Key key, this.title}) : super(key:key);

  final String title;

  @override
  Widget build(BuildContext context){
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
                        builder:(context)=>PageView1()
                      )
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
                            builder:(context)=>PageView2()
                        )
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
                            builder:(context)=>PageView3()
                        )
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

class PageView1 extends StatelessWidget {
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

class PageView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('펀딩 진행하기'),
        )
    );
  }
}

class PageView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('my 메뉴'),
        )
    );
  }
}

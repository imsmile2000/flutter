import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '동내친구',
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
                            builder:(context)=>PageView1()
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
                            builder:(context)=>PageView1()
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
    return Scaffold(
      appBar: AppBar(
        title: Text('현재 진행중인 펀딩'),
      )
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
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  static final name = "DrawerPage";
  static final title = "Drawer";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Drawer抽屉组件示例',
        home: Scaffold(
          appBar: AppBar(
            leading: BackButton(
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text('Drawer抽屉组件示例'),
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text('Aaron'),
                  accountEmail: Text('haf@163.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('images/avator.jpg'),
                  ),
                  onDetailsPressed: () {},
                  otherAccountsPictures: <Widget>[
                    Container(
                      child: Image.asset('images/code.png'),
                    )
                  ],
                ),
                ListTile(
                  leading: CircleAvatar(child: Icon(Icons.home)),
                  title: Text('主页'),
                ),
                ListTile(
                  leading: CircleAvatar(child: Icon(Icons.photo)),
                  title: Text('相册'),
                ),
                ListTile(
                  leading: CircleAvatar(child: Icon(Icons.settings)),
                  title: Text('设置'),
                ),
              ],
            ),
          ),
          body: Center(
            child: Text('请从左边缘向右滑', style: TextStyle(fontSize: 24.0),),
          ),
        ));
  }
}

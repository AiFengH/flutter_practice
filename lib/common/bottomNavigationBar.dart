import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {
  static final name = "BottomNavigationBarPage";
  static final title = "BottomNavigationBar";

  @override
  State<StatefulWidget> createState() => _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  final _widgetOptions = [
    Text('Index 0: 信息'),
    Text('Index 1: 通讯录'),
    Text('Index 2: 通讯录')
  ];
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'BottomNavigationBar组件示例',
        home: Scaffold(
          appBar: AppBar(
            leading: new BackButton(
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text('BottomNavigationBar组件示例'),
          ),
          body: new Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat), title: Text('信息')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.contacts), title: Text('通讯录')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle), title: Text('发现')),
            ],
            currentIndex: _selectedIndex,
            fixedColor: Colors.deepPurple,
            onTap: _onItemTapped,
          ),
        ));
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

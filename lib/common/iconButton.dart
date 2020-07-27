import 'package:flutter/material.dart';

class IconButtonPage extends StatelessWidget {
  static final name = "IconButtonPage";
  static final title = "IconButton";
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: '图标按钮组件示例',
        home: Scaffold(
          appBar: AppBar(
            leading: new BackButton(
              onPressed: () {Navigator.pop(context);},
            ),
            title: Text('图标按钮组件示例'),
          ),
          body: new IconButton(
            icon: Icon(
              Icons.phone,
              size: 48.0,
            ),
            tooltip: '按下操作',
            onPressed: () {
              print('按下操作');
            },
          ),
        ));
  }
}

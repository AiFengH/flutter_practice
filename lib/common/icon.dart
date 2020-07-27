import 'package:flutter/material.dart';

class IconPage extends StatelessWidget {
  static final name = "IconPage";
  static final title = "Icon";
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: '图标组件示例',
        home: Scaffold(
          appBar: AppBar(
            leading: new BackButton(
              onPressed: () {Navigator.pop(context);},
            ),
            title: Text('图标组件示例'),
          ),
          body: new Icon(
            Icons.phone,
            color: Colors.green[500],
            size: 80.0,
          ),
        ));
  }
}

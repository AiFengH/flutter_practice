import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  static final name = "TextPage";
  static final title = "Text";
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Image demo',
        home: Scaffold(
          appBar: AppBar(
            leading: new BackButton(
              onPressed: () {Navigator.pop(context);},
            ),
            title: Text('Image demo'),
          ),
          body: new Column(
            children: <Widget>[
              new Text(
                '红色 + 黑色删除线 + 25号',
                style: new TextStyle(
                    color: const Color(0xffff0000),
                    decoration: TextDecoration.lineThrough,
                    decorationColor: const Color(0xff000000),
                    fontSize: 25.0),
              ),
              new Text(
                '橙色 + 加下划线 + 24号',
                style: new TextStyle(
                    color: const Color(0xffff9900),
                    decoration: TextDecoration.underline,
                    fontSize: 24.0),
              ),
              new Text(
                '虚线上划线 + 23号 + 倾斜',
                style: new TextStyle(
                    decoration: TextDecoration.overline,
                    decorationStyle: TextDecorationStyle.dashed,
                    fontSize: 23.0,
                    fontStyle: FontStyle.italic),
              ),
              new Text(
                '24号 + 加粗',
                style: new TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 6.0,
                    fontSize: 24.0),
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';

class LongListViewPage extends StatelessWidget {
  static final name = "LongListViewPage";
  static final title = "LongListView";
  final List<String> items = new List<String>.generate(500, (index) => "Item $index");

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: '长列表示例',
        home: Scaffold(
            appBar: AppBar(
              leading: new BackButton(
                onPressed: () {Navigator.pop(context);},
              ),
              title: Text('图标组件示例'),
            ),
            body: new ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return new ListTile(
                  leading: new Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                );
              },
            )));
  }
}

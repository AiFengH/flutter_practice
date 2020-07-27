import 'package:flutter/material.dart';

class HorizontalListViewPage extends StatelessWidget {
  static final name = "HorizontalListViewPage";
  static final title = "HorizontalListView";
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: '图标组件示例',
        home: Scaffold(
          appBar: AppBar(
            leading: new BackButton(
              onPressed: () {Navigator.pop(context);},
            ),
            title: Text('水平列表示例'),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 120.0,
                  color: Colors.amber,
                ),

                Container(
                  width: 120.0,
                  color: Colors.green,
                ),

                Container(
                  width: 120.0,
                  color: Colors.grey,
                ),

                Container(
                  width: 120.0,
                  color: Colors.blue,
                ),
              ],
            ),
          )
        ));
  }
}

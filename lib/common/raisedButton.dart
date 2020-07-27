import 'package:flutter/material.dart';

class RaisedButtonPage extends StatelessWidget {
  static final name = "RaisedButtonPage";
  static final title = "RaisedButton";
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'RaisedButton组件示例',
        home: Scaffold(
          appBar: AppBar(
            leading: new BackButton(
              onPressed: () {Navigator.pop(context);},
            ),
            title: Text('RaisedButton组件示例'),
          ),
          body: new Column(
              children: <Widget>[
                new RaisedButton(
                  onPressed: () {
                    print('按下操作');
                  },
                  child: new Text('RaisedButton 组件'),
                ),
              ],
          ),
        ));
  }
}

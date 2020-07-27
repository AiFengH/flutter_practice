import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  static final name = "GridViewPage";
  static final title = "GridView";
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: '网格列表示例',
        home: Scaffold(
          appBar: AppBar(
            leading: new BackButton(
              onPressed: () {Navigator.pop(context);},
            ),
            title: Text('网格列表示例'),
          ),
          body: new GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20.0),
            crossAxisSpacing: 30.0,
            crossAxisCount: 6,
            children: <Widget>[
              const Text('1'),
              const Text('2'),
              const Text('3'),
              const Text('4'),
              const Text('5'),
              const Text('6'),
              const Text('7'),
              const Text('8'),
              const Text('9'),
              const Text('10'),
              const Text('11'),
              const Text('12'),
              const Text('13'),
              const Text('14'),
              const Text('15'),
              const Text('16'),
              const Text('17'),
              const Text('18'),
            ],
          ),
        ));
  }
}

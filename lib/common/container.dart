import 'package:flutter/material.dart';
class ContainerPage extends StatelessWidget {
  static final name = "ContainerPage";
  static final title = "Container";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '容器组件示例',
      home: Scaffold(
        appBar: AppBar(
          leading: new BackButton(
            onPressed: () {Navigator.pop(context);},
          ),
          title: Text('容器组件示例'),
        ),
        body: Center(
          child: Container(
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
                color: Colors.white,
                border: new Border.all(color: Colors.grey, width: 8.0),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(8.0))),
            child: Column(
              children: [
                Text(
                  'Flutter',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28.0),
                ),
                Text(
                  'Flutter',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

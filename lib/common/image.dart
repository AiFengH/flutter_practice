import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  static final name = "ImagePage";
  static final title = "Image";
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
          body: new Center(
            child: new Image.network(
              'http://dmimg.5054399.com/allimg/pkm/pk/13.jpg',
              fit: BoxFit.fitWidth,
            ),
          ),
        ));
  }
}

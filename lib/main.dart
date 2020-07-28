import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/common/bottomNavigationBar.dart';
import 'package:flutterapp/common/container.dart';
import 'package:flutterapp/common/drawer.dart';
import 'package:flutterapp/common/form.dart';
import 'package:flutterapp/common/gridView.dart';
import 'package:flutterapp/common/horizontalListView.dart';
import 'package:flutterapp/common/icon.dart';
import 'package:flutterapp/common/iconButton.dart';
import 'package:flutterapp/common/image.dart';
import 'package:flutterapp/common/longListView.dart';
import 'package:flutterapp/common/raisedButton.dart';
import 'package:flutterapp/common/tabBar.dart';
import 'package:flutterapp/common/text.dart';
import 'package:flutterapp/complex/cat.dart';
import 'package:flutterapp/complex/collection.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Component',
    home: new MainPage(),
    routes: {
      MainPage.name: (BuildContext context) => MainPage(),
      CommonPage.name: (BuildContext context) => CommonPage(),
      ComplexPage.name: (BuildContext context) => ComplexPage(),

      //common
      ContainerPage.name: (BuildContext context) => ContainerPage(),
      FormPage.name: (BuildContext context) => FormPage(),
      GridViewPage.name: (BuildContext context) => GridViewPage(),
      HorizontalListViewPage.name: (BuildContext context) => HorizontalListViewPage(),
      IconPage.name: (BuildContext context) => IconPage(),
      IconButtonPage.name: (BuildContext context) => IconButtonPage(),
      ImagePage.name: (BuildContext context) => ImagePage(),
      LongListViewPage.name: (BuildContext context) => LongListViewPage(),
      RaisedButtonPage.name: (BuildContext context) => RaisedButtonPage(),
      TextPage.name: (BuildContext context) => TextPage(),
      BottomNavigationBarPage.name: (BuildContext context) => BottomNavigationBarPage(),
      DefaultTabControllerSample.name: (BuildContext context) => TabBarSample(),//DefaultTabControllerSample(),
      DrawerPage.name: (BuildContext context) => DrawerPage(),

      //complex
      CatPage.name: (BuildContext context) => CatPage(),
      CollectionPage.name: (BuildContext context) => CollectionPage(),
    },
    initialRoute: MainPage.name,
  ));
}

Widget generateItemWidget(BuildContext context, String pageName, String title) {
  return new Container(
    height: 50,
    padding: new EdgeInsets.fromLTRB(20, 0, 0, 0),
    alignment: Alignment.centerLeft,
    child: new GestureDetector(
      child: new Text(
        title,
        style: new TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0),
      ),
      onTap: () {
        Navigator.pushNamed(context, pageName);
      },
    ),
  );
}

class MainPage extends StatelessWidget {
  static final name = "MainPage";
  static final title = "Component";
  final List<String> names = [CommonPage.name, ComplexPage.name];
  final List<String> titles = [CommonPage.title, ComplexPage.title];

  MainPage() {
    names.sort((a, b) => a[0].compareTo(b[0]));
    titles.sort((a, b) => a[0].compareTo(b[0]));
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = new List<Widget>.generate(names.length,
        (index) => generateItemWidget(context, names[index], titles[index]));

    return new MaterialApp(
      title: title,
      theme:
          new ThemeData(primaryColor: Colors.white, primarySwatch: Colors.blue),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Center(child: new Text(title)),
        ),
        body: new Center(
          child: new Column(
            children: items,
          ),
        ),
      ),
    );
  }
}

class CommonPage extends StatelessWidget {
  static final name = "CommonPage";
  static final title = 'Common';
  final List<String> names = [
    ContainerPage.name,
    FormPage.name,
    GridViewPage.name,
    HorizontalListViewPage.name,
    IconPage.name,
    IconButtonPage.name,
    ImagePage.name,
    LongListViewPage.name,
    RaisedButtonPage.name,
    TextPage.name,
    BottomNavigationBarPage.name,
    DefaultTabControllerSample.name,
    DrawerPage.name
  ];

  final List<String> titles = [
    ContainerPage.title,
    FormPage.title,
    GridViewPage.title,
    HorizontalListViewPage.title,
    IconPage.title,
    IconButtonPage.title,
    ImagePage.title,
    LongListViewPage.title,
    RaisedButtonPage.title,
    TextPage.title,
    BottomNavigationBarPage.title,
    DefaultTabControllerSample.title,
    DrawerPage.title
  ];

  CommonPage() {
    names.sort((a, b) => a[0].compareTo(b[0]));
    titles.sort((a, b) => a[0].compareTo(b[0]));
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = new List<Widget>.generate(names.length,
        (index) => generateItemWidget(context, names[index], titles[index]));

    return new MaterialApp(
        title: title,
        home: new Scaffold(
            appBar: new AppBar(
              leading: BackButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text(title),
            ),
            body: new ListView(
              children: items,
            )));
  }
}

class ComplexPage extends StatelessWidget {
  static final name = "ComplexPage";
  static final title = 'Complex';
  final List<String> names = [CatPage.name, CollectionPage.name];
  final List<String> titles = [CatPage.title, CollectionPage.title];

  ComplexPage() {
    names.sort((a, b) => a[0].compareTo(b[0]));
    titles.sort((a, b) => a[0].compareTo(b[0]));
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = new List<Widget>.generate(names.length,
        (index) => generateItemWidget(context, names[index], titles[index]));

    return new MaterialApp(
        title: title,
        home: new Scaffold(
            appBar: new AppBar(
              leading: BackButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text(title),
            ),
            body: new ListView(children: items)));
  }
}

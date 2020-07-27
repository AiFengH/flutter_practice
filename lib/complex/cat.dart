import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CatPage extends StatelessWidget {
  static final name = "CatPage";
  static final title = "Cat";
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: new Text(
                  'Cat',
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              new Text(
                'White, Puppet',
                style: new TextStyle(color: Colors.grey[500]),
              )
            ],
          )),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text('41'),
        ],
      ),
    );

    Column buildButonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(
            icon,
            color: color,
          ),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                  fontSize: 12.0, fontWeight: FontWeight.w400, color: color),
            ),
          )
        ],
      );
    }

    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButonColumn(Icons.call, 'CALL'),
          buildButonColumn(Icons.near_me, 'ROUTE'),
          buildButonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = new Container(
      padding: EdgeInsets.all(32.0),
      child: new Text(
        """
      The British shorthair cat has a chubby figure, short and well-developed limbs, short and dense hair, a big head and a round face, gentle and calm, friendly to people and easy to breed.
      """,
        softWrap: true,
      ),
    );

    Widget body = new ListView(
      children: <Widget>[
        new Image.asset(
          'images/avator.jpg',
          height: 240,
          fit: BoxFit.cover,
        ),
        titleSection,
        buttonSection,
        textSection
      ],
    );

    return new Scaffold(
          appBar: new AppBar(
            leading: new BackButton(
              onPressed: () {Navigator.pop(context);},
            ),
            title: new Text(title),
          ),
//            body: new Center(
//              child: new Text('hello world'),
//            child: Image.asset("images/avator.jpg", width: 400, height: 400,),
//              child: titleSection,
//            )
          body: body,
        );
  }
}

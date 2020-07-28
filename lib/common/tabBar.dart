import 'package:flutter/material.dart';

class DefaultTabControllerSample extends StatelessWidget {
  static final name = "TabBarPage";
  static final title = "TabBar";
  final List<Tab> myTabs = <Tab>[
    Tab(
      text: '选项卡一',
    ),
    Tab(
      text: '选项卡二',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: title,
        home: DefaultTabController(
          length: myTabs.length,
          child: Scaffold(
            appBar: AppBar(
              leading: new BackButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text(title),
              bottom: TabBar(tabs: myTabs),
            ),
            body: TabBarView(
                children: myTabs
                    .map((e) => Center(
                          child: Text(e.text),
                        ))
                    .toList()),
          ),
        ));
  }
}

class ItemView {
  final String title;
  final IconData icon;

  const ItemView(this.title, this.icon);
}

const List<ItemView> items = const <ItemView>[
  const ItemView('自驾', Icons.directions_car),
  const ItemView('自行车', Icons.directions_bike),
  const ItemView('轮船', Icons.directions_boat),
  const ItemView('公交车', Icons.directions_bus),
  const ItemView('火车', Icons.directions_railway),
  const ItemView('步行', Icons.directions_walk),
  const ItemView('地铁', Icons.directions_subway),
];

class SelectedView extends StatelessWidget {
  final ItemView item;

  const SelectedView({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return new Card(
      color: Colors.white,
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(item.icon, size: 128.0, color: textStyle.color),
            new Text(
              item.title,
              style: textStyle,
            )
          ],
        ),
      ),
    );
  }
}

class TabBarSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: items.length,
        child: new Scaffold(
          appBar: new AppBar(
            title: const Text('TabBar选项卡示例'),
            bottom: new TabBar(
              tabs: items
                  .map((e) => new Tab(
                        text: e.title,
                        icon: new Icon(e.icon),
                      ))
                  .toList(),
              isScrollable: true,
            ),
          ),
          body: new TabBarView(
              children: items
                  .map((e) => new Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: new SelectedView(
                          item: e,
                        ),
                      ))
                  .toList()),
        ));
  }
}

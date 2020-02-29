import 'package:flutter/material.dart';

import 'model/post.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(children: <Widget>[
        Image.network(posts[index].imageUrl),
        SizedBox(
          height: 16.0,
        ),
        Text(posts[index].title, style: Theme.of(context).textTheme.title),
        Text(posts[index].author, style: Theme.of(context).textTheme.subhead),
        SizedBox(
          height: 16.0,
        )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Center(child: Text('Welcome')),
          elevation: 0.0,
        ),
        body: ListView.builder(
            itemCount: posts.length, itemBuilder: _listItemBuilder));
  }
}

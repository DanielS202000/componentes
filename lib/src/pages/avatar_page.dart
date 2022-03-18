import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.blogs.es/c4754b/photo_2019-03-29_17-32-40/450_1000.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('GN'),
              backgroundColor: Colors.purple,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://i.blogs.es/c4754b/photo_2019-03-29_17-32-40/450_1000.jpg'),
          placeholder: AssetImage('assets/planetas-sistema.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
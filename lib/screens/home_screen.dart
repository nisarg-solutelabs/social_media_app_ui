import 'package:flutter/material.dart';
import 'package:ui_3/data/data.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'FRENZY',
            style: TextStyle(
              fontSize: 19.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 10.0,
              color: Colors.lightBlue,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.lightBlue,
            ),
            onPressed: () {},
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Trending',
                  style: TextStyle(
                    color: Colors.lightBlue,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Latest',
                  style: TextStyle(
                    color: Colors.lightBlue,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Text(
                'Following',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ClipRRect(
                    child: Image(
                      height: 30.0,
                      width: 30.0,
                      image: AssetImage('users[0].backgroundImageUrl'),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

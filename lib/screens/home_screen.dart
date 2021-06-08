import 'package:flutter/material.dart';
import 'package:ui_3/screens/latest_tab.dart';
import 'package:ui_3/screens/side_menu.dart';
import 'package:ui_3/screens/trending_tab.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: SideMenu(),
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
        body: TabBarView(
          children: [
            TrendingTab(),
            LatestTab(),
          ],
        ),
      ),
    );
  }
}

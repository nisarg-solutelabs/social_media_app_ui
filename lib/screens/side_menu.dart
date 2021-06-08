import 'package:flutter/material.dart';
import 'package:ui_3/screens/trending_tab.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Row(
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/images/user.jpg'),
                ),
                SizedBox(
                  width: 20.0,
                ),
                CustomBoldtext(
                  title: 'Rebecca',
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home_repair_service,
            ),
            title: Text('Home'),
          ),
          ListTile(
            leading: Icon(Icons.chat_bubble),
            title: Text('Chat'),
          ),
          ListTile(
            leading: Icon(Icons.map_rounded),
            title: Text('Map'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Your Profile'),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
            ),
            title: Text('Settings'),
          ),
          SizedBox(
            height: 100.0,
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
          ),
        ],
      ),
    );
  }
}

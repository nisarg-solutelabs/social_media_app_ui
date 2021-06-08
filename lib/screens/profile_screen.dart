import 'package:flutter/material.dart';
import 'package:ui_3/screens/side_menu.dart';
import 'package:ui_3/screens/trending_tab.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0),
                  ),
                  child: Image(
                    image: AssetImage('assets/images/login_background.jpg'),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Center(
                  child: CustomBoldtext(
                    title: 'Rebecca',
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Following',
                      style: TextStyle(fontSize: 20.0, color: Colors.grey),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(fontSize: 20.0, color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '453',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '937',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: CustomBoldtext(
                    title: 'Your posts',
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      CustomPost(),
                      CustomPost(),
                      CustomPost(),
                      CustomPost(),
                      CustomPost(),
                      CustomPost(),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              top: 140.0,
              left: 135.0,
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/user.jpg'),
              )),
          Positioned(
            top: 40.0,
            left: 30.0,
            child: Icon(
              Icons.menu,
              color: Colors.lightBlue,
              size: 30.0,
            ),
          ),
        ],
      ),
    );
  }
}

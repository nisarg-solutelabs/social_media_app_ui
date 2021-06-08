import 'package:flutter/material.dart';

class TrendingTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CustomBoldtext(
            title: 'Following',
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CustomFollowingImage(
                  imageUrl: 'assets/images/user0.jpg',
                ),
                CustomFollowingImage(
                  imageUrl: 'assets/images/user1.jpg',
                ),
                CustomFollowingImage(
                  imageUrl: 'assets/images/user2.jpg',
                ),
                CustomFollowingImage(
                  imageUrl: 'assets/images/user3.jpg',
                ),
                CustomFollowingImage(
                  imageUrl: 'assets/images/user4.jpg',
                ),
                CustomFollowingImage(
                  imageUrl: 'assets/images/user5.jpg',
                ),
                CustomFollowingImage(
                  imageUrl: 'assets/images/user6.jpg',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          CustomBoldtext(
            title: "Posts",
          ),
          SizedBox(
            height: 20.0,
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
    );
  }
}

class CustomPost extends StatelessWidget {
  const CustomPost({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      height: 300.0,
      width: 300.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/post0.jpg'),
        ),
      ),
    );
  }
}

class CustomBoldtext extends StatelessWidget {
  final String title;
  CustomBoldtext({this.title});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
    );
  }
}

class CustomFollowingImage extends StatelessWidget {
  final String imageUrl;
  CustomFollowingImage({this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CircleAvatar(
        backgroundColor: Colors.red,
        radius: 30.0,
        backgroundImage: AssetImage(imageUrl),
      ),
    );
  }
}

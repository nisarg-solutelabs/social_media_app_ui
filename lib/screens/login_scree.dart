import 'package:flutter/material.dart';
import 'package:ui_3/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          SizedBox(height: 20.0),
          Text(
            'FRENZY',
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 10.0,
              color: Colors.lightBlue,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          CustomTextBox(
            data: 'Username',
            iconData: Icons.person,
          ),
          SizedBox(
            height: 20.0,
          ),
          CustomTextBox(
            data: 'Password',
            iconData: Icons.lock,
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            height: 40.0,
            width: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.lightBlue,
            ),
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 19.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 82.0),
            child: Container(
              height: 60,
              decoration: BoxDecoration(color: Colors.lightBlue),
              child: Center(
                child: Text(
                  'Don\'t have an account? Sign up',
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomTextBox extends StatelessWidget {
  final String data;
  final IconData iconData;
  CustomTextBox({this.data, this.iconData});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: data,
          prefixIcon: Icon(iconData),
        ),
      ),
    );
  }
}

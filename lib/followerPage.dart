import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Profile_Page/profilePage.dart';

class FollowerPage extends StatefulWidget {
  const FollowerPage({Key key}) : super(key: key);

  @override
  _FollowerPageState createState() => _FollowerPageState();
}

class _FollowerPageState extends State<FollowerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
              ),
            );
          },
          iconSize: 20,
        ),
        title: Text(
          "Follower",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.refresh_outlined,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              iconSize: 20,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FollowerPage(),
                  ),
                );
              }),
        ],
      ),
    );
  }
}

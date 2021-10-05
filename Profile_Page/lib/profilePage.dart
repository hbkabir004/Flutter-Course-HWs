import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
            iconSize: 18,
          ),
          title: Text(
            "Profile Page",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w800,
              color: Colors.grey.shade200,
              fontStyle: FontStyle.italic,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Container(
                height: 20,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.green.shade400,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Edit"),
                    Icon(
                      Icons.create_sharp,
                      size: 12,
                    ),
                  ],
                ),
              ),
            ),
          ]),
      extendBodyBehindAppBar: true,
      body: Container(
          height: 500,
          width: 500,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 5,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("ABIR's Profile Page"),
              SizedBox(
                width: 10,
              ),
              Text("HW-DAY-08 (Sunday)"),
              SizedBox(
                width: 5,
              ),
            ],
          )),
    );
  }
}

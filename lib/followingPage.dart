import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Profile_Page/Models/Models.dart';
import 'package:Profile_Page/profilePage.dart';

List<Following> following = [
  Following(username: "Abdur Rajjak", profileImageURL: "images/Profile_Images/user_1.jpg", dateTime: DateTime.now().toUtc().toString()),
  Following(username: "Shakib Al Hasan", profileImageURL: "images/Profile_Images/user_2.jpg", dateTime: DateTime.now().toUtc().toString()),
  Following(username: "Tawsif Mahbub", profileImageURL: "images/Profile_Images/user_3.jpg", dateTime: DateTime.now().toUtc().toString()),
  Following(username: "Mosharraf Karim", profileImageURL: "images/Profile_Images/user_4.jpg", dateTime: DateTime.now().toUtc().toString()),
  Following(username: "Chanchal Chowdhury", profileImageURL: "images/Profile_Images/user_5.jpg", dateTime: DateTime.now().toUtc().toString()),
  Following(username: "Afran Nisho", profileImageURL: "images/Profile_Images/user_6.jpg", dateTime: DateTime.now().toUtc().toString()),
  Following(username: "Ziaul Faruq Apurba", profileImageURL: "images/Profile_Images/user_7.jpg", dateTime: DateTime.now().toUtc().toString()),
  Following(username: "Siam Ahmed", profileImageURL: "images/Profile_Images/user_8.jpg", dateTime: DateTime.now().toUtc().toString()),
  Following(username: "Zakia Bari Mamo", profileImageURL: "images/Profile_Images/user_9.jpg", dateTime: DateTime.now().toUtc().toString()),
  Following(username: "Mashrafe Mortaza", profileImageURL: "images/Profile_Images/user_10.jpg", dateTime: DateTime.now().toUtc().toString()),
];

class FollowingPage extends StatefulWidget {
  const FollowingPage({Key key}) : super(key: key);

  @override
  _FollowingPageState createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage> {
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
          iconSize: 20,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
              ),
            );
          },
        ),
        title: Text(
          "Following",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
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
                  builder: (context) => FollowingPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: Align(
          alignment: Alignment.topLeft,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 12),
            itemCount: following.length,
            itemBuilder: (BuildContext context,int index){
              return Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("${following[index].profileImageURL}"),
                      ),
                      Expanded(child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text: "${following[index].username}",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(21, 21, 21, .6),
                          ),
                          // children: [
                          //   TextSpan(
                          //     text: ,
                          //     style: ,
                          //   )
                          // ],
                        ),
                      )
                      ),
                    ],
                  )
              );
            },
          )
      ),
    );
  }
}

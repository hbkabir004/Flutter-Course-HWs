import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Profile_Page/profilePage.dart';

List<String> imageAvatar=[
  'images/Profile_Images/user_1.jpg',
  'images/Profile_Images/user_2.jpg',
  'images/Profile_Images/user_3.jpg',
  'images/Profile_Images/user_4.jpg',
  'images/Profile_Images/user_5.jpg',
  'images/Profile_Images/user_6.jpg',
  'images/Profile_Images/user_7.jpg',
  'images/Profile_Images/user_8.jpg',
  'images/Profile_Images/user_9.jpg',
  'images/Profile_Images/user_10.jpg',
];

class MessengerPage extends StatefulWidget {
  const MessengerPage({Key key}) : super(key: key);

  @override
  _MessengerPageState createState() => _MessengerPageState();
}

class _MessengerPageState extends State<MessengerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
              ),
            );
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
          iconSize: 20,
        ),
        actions: [
          Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 10, top: 10, bottom: 10),
            child: Container(
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width / 2.5,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  width: 3,
                  style: BorderStyle.solid,
                ),
              ),
              child: FlatButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MessengerPage(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.message,
                  size: 15,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                label: Text(
                  "Messages",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
            ),
          )
        ],
        centerTitle: true,
        title: Text(
          "Messenger",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
      ),
      body: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          children: [
            //header list view container

            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: MediaQuery.of(context).size.height/1.2,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                  itemCount: imageAvatar.length,
                itemBuilder: (BuildContext context, int index){
                    return Container(
                        height: MediaQuery.of(context).size.height/10,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.blueAccent,
                          width: 3,
                          style: BorderStyle.solid,
                        ),
                        image: DecorationImage(
                          image: AssetImage("${imageAvatar[index]}"),
                          fit: BoxFit.contain,
                        )
                      ),
                    );

                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:Profile_Page/Models/MessengerModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Profile_Page/profilePage.dart';

List<String> imagesAvatar = [
  "images/Profile_Images/user_1.jpg",
  "images/Profile_Images/user_2.jpg",
  "images/Profile_Images/user_3.jpg",
  "images/Profile_Images/user_4.jpg",
  "images/Profile_Images/user_5.jpg",
  "images/Profile_Images/user_6.jpg",
  "images/Profile_Images/user_7.jpg",
  "images/Profile_Images/user_8.jpg",
  "images/Profile_Images/user_9.jpg",
  "images/Profile_Images/user_10.jpg",
];

List<MessengerModel> messengerModel = [
  MessengerModel(
    username: "Abdur Rajjak",
    lastMessage: "আমার ছেলে দেবদাস না!",
    userProfilePicture: "images/Profile_Images/user_1.jpg",
  ),
  MessengerModel(
    username: "Shakib Al Hasan",
    lastMessage: "সোনার ব্যাবসায় ইনভেস্ট করে আমার পাশে থাকুন।",
    userProfilePicture: "images/Profile_Images/user_2.jpg",
  ),
  MessengerModel(
    username: "Tawsif Mahbub",
    lastMessage: "ব্যাচেলর পয়েন্ট এর নেক্সট সিজনে থাকতে পারি",
    userProfilePicture: "images/Profile_Images/user_3.jpg",
  ),
  MessengerModel(
    username: "Mosharraf Karim",
    lastMessage: "জীবনে সবসময় ২টা জিনিস মনে রাখবা,...",
    userProfilePicture: "images/Profile_Images/user_4.jpg",
  ),
  MessengerModel(
    username: "Chanchal Chowdhury",
    lastMessage: "বোঝো নাই ব্যাপারটা?",
    userProfilePicture: "images/Profile_Images/user_5.jpg",
  ),
  MessengerModel(
    username: "Afran Nisho",
    lastMessage: "বুকে চিনচিন করছে হায়,...",
    userProfilePicture: "images/Profile_Images/user_6.jpg",
  ),
  MessengerModel(
    username: "Ziaul Faruq Apurba",
    lastMessage: "হ্যাঁ, আমিই বড়ছেলে!",
    userProfilePicture: "images/Profile_Images/user_7.jpg",
  ),
  MessengerModel(
    username: "Siam Ahmed",
    lastMessage: "নতুন মুভি আসতেছে কিন্তু!",
    userProfilePicture: "images/Profile_Images/user_8.jpg",
  ),
  MessengerModel(
    username: "Zakia Bari Mamo",
    lastMessage: "dp দেবার মতো আমার আর কোনো ছবি পেলে না?",
    userProfilePicture: "images/Profile_Images/user_9.jpg",
  ),
  MessengerModel(
    username: "Mashrafe Mortaza",
    lastMessage: "রাসেল ডমিংহোরে গণ দিবি এয়ারপোর্টে!",
    userProfilePicture: "images/Profile_Images/user_10.jpg",
  ),
];

class Messenger_Page extends StatefulWidget {
  const Messenger_Page({Key key}) : super(key: key);

  @override
  _Messenger_PageState createState() => _Messenger_PageState();
}

class _Messenger_PageState extends State<Messenger_Page> {
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
            color: Color.fromRGBO(31, 31, 45, .6),
          ),
          iconSize: 20,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.refresh_outlined,
              color: Color.fromRGBO(0, 0, 0, .6),
            ),
            iconSize: 20,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Messenger_Page(),
                ),
              );
            },
          ),
        ],
        backgroundColor: Color.fromRGBO(240, 240, 240, .6),
        centerTitle: true,
        title: Text(
          "Messenger",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Color.fromRGBO(31, 31, 45, .6)),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Text(
                "Friends",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(21, 21, 21, 1),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagesAvatar.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 7),
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("${imagesAvatar[index]}"),
                        fit: BoxFit.fitWidth,
                      ),
                      border: Border.all(
                          color: Color.fromRGBO(100, 100, 255, 1),
                          style: BorderStyle.solid,
                          width: 3),
                    ),
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
              child: Text(
                "Messages",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(21, 21, 21, 1),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    height: MediaQuery.of(context).size.height / 10,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Stack(
                          overflow: Overflow.visible,
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage(
                                  "${messengerModel[index].userProfilePicture}"),
                            ),
                            Positioned(
                              top: MediaQuery.of(context).size.height / 15,
                              left: MediaQuery.of(context).size.width / 6.2,
                              child: CircleAvatar(
                                radius: 6,
                                backgroundColor: Color.fromRGBO(20, 255, 10, 1),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          height: MediaQuery.of(context).size.height / 10,
                          width: MediaQuery.of(context).size.width / 1.4,
                          child: RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              text: "${messengerModel[index].username}\n",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(0, 0, 0, .6),
                                  height: 1.3),
                              children: [
                                TextSpan(
                                  text:
                                  "last message : ${messengerModel[index].lastMessage}",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromRGBO(0, 0, 0, .6),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              childCount: messengerModel.length,
            ),
          ),
        ],
      ),
    );
  }
}
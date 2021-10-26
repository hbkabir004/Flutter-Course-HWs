import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Profile_Page/Models/Models.dart';
import 'package:Profile_Page/profilePage.dart';

List<PostModel> post = [
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: 'Khulna Government Mahila College',
      address: ' Jalil - Sarani, Khulna,Khulna,Bangaldesh',
      postImageURL: 'images/Posts/postImage01',
      likes: 2345),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: 'Khulna College',
      address: 'Seikh Para Main Rd, Khulna,Khulna,Bangladesh',
      postImageURL: 'images/Posts/postImage01',
      likes: 345),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: 'Ahsanullah College',
      address: 'KDA Ave, Khulna,Khulna,Bangladesh',
      postImageURL: 'images/Posts/postImage01',
      likes: 545),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: 'Azam Khan Government Commerce College',
      address: 'Babu Khan Rd, Khulna,Khulna,Bangladesh',
      postImageURL: 'images/Posts/postImage01',
      likes: 45),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: 'Govt. Brajalal (BL) College',
      address: 'Kashipur, B.L. College Rd, Khulna,Khulna,Bangladesh',
      postImageURL: 'images/Posts/postImage01',
      likes: 35),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: 'Govt. M. M. City College',
      address: '300 Khan Jahan Ali Rd, Khulna-9100,Khulna,Bangladesh',
      postImageURL: 'images/Posts/postImage01',
      likes: 23),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: 'Khulna Public College',
      address: 'Public college, road, Khulna-9000,Khulna,Bangaldesh',
      postImageURL: 'images/Posts/postImage01',
      likes: 845),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: 'Khulna Govt. College',
      address: '',
      postImageURL: 'images/Posts/postImage01',
      likes: 5355),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: '',
      address: '',
      postImageURL: 'images/Posts/postImage01',
      likes: 4845),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: '',
      address: '',
      postImageURL: 'images/Posts/postImage01',
      likes: 245),
];

class PostPage extends StatefulWidget {
  const PostPage({Key key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
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
          title: Text(
            "Posts Page",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PostPage(),
                  ),
                );
              },
              icon: Icon(
                Icons.refresh_outlined,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              iconSize: 20,
            ),
          ],
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromRGBO(245, 12, 104, 0.1),
                        Color.fromRGBO(245, 12, 104, 0.2),
                        Color.fromRGBO(245, 12, 104, 0.3),
                        Color.fromRGBO(245, 12, 104, 0.4),
                        Color.fromRGBO(245, 12, 104, 0.5),
                        Color.fromRGBO(245, 12, 104, 0.6),
                        Color.fromRGBO(245, 12, 104, 0.7),
                        Color.fromRGBO(245, 12, 104, 0.8),
                        Color.fromRGBO(245, 12, 104, 0.9),
                        Color.fromRGBO(245, 12, 104, 0.1),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
    child: Column(
children: [
    Padding(
    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
    child: Column(
    children: [

    // Header Row

    Padding(
    padding: const EdgeInsets.symmetric(vertical: 7),
    child: Row(
    children: [
    CircleAvatar(
    radius: 30,
    backgroundImage: AssetImage("${post[index].profileImageURL}"),
    ),
    Padding(
    padding: EdgeInsets.symmetric(horizontal: 13),
    child: RichText(
    textAlign: TextAlign.justify,
    text: TextSpan(
    text: "${post[index].username}\n",
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: Color.fromRGBO(21, 21, 21, 1),
    height: 1.2,
    ),
    children: [
    TextSpan(
    text: "${DateTime.now()}",
    style: TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 15,
    color: Color.fromRGBO(21, 21, 21, 1)
    ),
    )
    ],
    ),
    ),
    ),
    ],
    ),
    ),

                //***ADDRESS ROW***//
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 7),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 15,
                        color: Color.fromRGBO(21, 21, 21, 1),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                            "${post[index].address}",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(21, 21, 21, 1),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                )
    ],
    ),
    ),
    ],
    ),



                  );
              }),
                  ),
                );
  }
}


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
      postImageURL: '',
      likes: 2345),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: 'Khulna College',
      address: 'Seikh Para Main Rd, Khulna,Khulna,Bangladesh',
      postImageURL: '',
      likes: 345),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: 'Ahsanullah College',
      address: 'KDA Ave, Khulna,Khulna,Bangladesh',
      postImageURL: '',
      likes: 545),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: 'Azam Khan Government Commerce College',
      address: 'Babu Khan Rd, Khulna,Khulna,Bangladesh',
      postImageURL: '',
      likes: 45),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: 'Govt. Brajalal (BL) College',
      address: 'Kashipur, B.L. College Rd, Khulna,Khulna,Bangladesh',
      postImageURL: '',
      likes: 35),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: 'Govt. M. M. City College',
      address: '300 Khan Jahan Ali Rd, Khulna-9100,Khulna,Bangladesh',
      postImageURL: '',
      likes: 23),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: 'Khulna Public College',
      address: 'public college, road, Khulna-9000,Khulna,Bangaldesh',
      postImageURL: '',
      likes: 845),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: '',
      address: '',
      postImageURL: '',
      likes: 5355),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: '',
      address: '',
      postImageURL: '',
      likes: 4845),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: '',
      address: '',
      postImageURL: '',
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
              // itemCount: ,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blueGrey,
                      width: 5,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(95),
                        child: Center(
                          child: Text(
                            "Coming Soon...",
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ));
  }
}

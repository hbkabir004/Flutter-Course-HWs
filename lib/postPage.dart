import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Profile_Page/Models/Models.dart';
import 'package:Profile_Page/profilePage.dart';

List<PostModel> post = [
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: 'Khulna Government Mahila College',
      address: 'Jalil - Sarani, Khulna, Bangaldesh',
      postImageURL: 'images/Posts/postImage01.jpg',
      likes: 2345),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: 'Khulna College',
      address: 'Seikh Para Main Rd, '
          'Khulna, Bangladesh',
      postImageURL: 'images/Posts/postImage01.jpg',
      likes: 345),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: 'Ahsanullah College',
      address: 'KDA Ave, Khulna, Bangladesh',
      postImageURL: 'images/Posts/postImage01.jpg',
      likes: 545),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: 'Azam Khan Government Commerce College',
      address: 'Babu Khan Rd, Khulna, Bangladesh',
      postImageURL: 'images/Posts/postImage01.jpg',
      likes: 45),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: 'Govt. Brajalal (BL) College',
      address: 'Kashipur, College Rd, '
          'Khulna, Bangladesh',
      postImageURL: 'images/Posts/postImage01.jpg',
      likes: 35),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: 'Govt. M. M. City College',
      address: '300 Khan Jahan Ali Rd, '
          'Khulna, Bangladesh',
      postImageURL: 'images/Posts/postImage01.jpg',
      likes: 23),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: 'Khulna Public College',
      address: 'Public college, road, '
          'Khulna, Bangladesh',
      postImageURL: 'images/Posts/postImage01.jpg',
      likes: 845),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: 'Khulna Government College',
      address: 'Hasanbag Road, '
          'Khulna, Bangladesh',
      postImageURL: 'images/Posts/postImage01.jpg',
      likes: 5355),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: 'Government Sundarban Adarsha College',
      address: '91 Khanjhan Ali road, '
          'Jessore, Bangladesh',
      postImageURL: 'images/Posts/postImage01.jpg',
      likes: 4845),
  PostModel(
      username: 'Md. Hasanul Banna Khan Abir',
      profileImageURL: 'images/me.png',
      caption: 'Khulna Islamia Degree College',
      address: ' M A Bari St, '
          'Khulna, Bangladesh',
      postImageURL: 'images/Posts/postImage01.jpg',
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
                      Color.fromRGBO(130, 177, 255, 0.1),
                      Color.fromRGBO(130, 177, 255, 0.2),
                      Color.fromRGBO(130, 177, 255, 0.3),
                      Color.fromRGBO(130, 177, 255, 0.4),
                      Color.fromRGBO(130, 177, 255, 0.5),
                      Color.fromRGBO(130, 177, 255, 0.6),
                      Color.fromRGBO(130, 177, 255, 0.7),
                      Color.fromRGBO(130, 177, 255, 0.8),
                      Color.fromRGBO(130, 177, 255, 0.9),
                      Color.fromRGBO(130, 177, 255, 0.1),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Column(
                        children: [
                          // Header Row

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 7),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                      "${post[index].profileImageURL}"),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: RichText(
                                    textAlign: TextAlign.justify,
                                    text: TextSpan(
                                      text: "${post[index].username}\n",
                                      style: TextStyle(
                                        fontSize: 17,
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
                                              color: Color.fromRGBO(
                                                  21, 21, 21, 1)),
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
                                      fontSize: 14,
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

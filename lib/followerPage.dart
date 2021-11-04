import 'package:Profile_Page/Models/FollowerModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Profile_Page/profilePage.dart';

List<FollowerModel> followermodel = [
  FollowerModel(username: 'Mashrafe Bin Mortaza', imageURL: 'https://upload.wikimedia.org/wikipedia/commons/f/f2/Mashrafe_conference_1.jpg', friends: 256485,),
  FollowerModel(username: 'Arijit Singh', imageURL: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Arijit_5th_GiMA_Awards.jpg/330px-Arijit_5th_GiMA_Awards.jpg', friends: 465465,),
  FollowerModel(username: 'Ed Sheeran', imageURL: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Ed_Sheeran-6886_%28cropped%29.jpg/330px-Ed_Sheeran-6886_%28cropped%29.jpg', friends: 456465,),
  FollowerModel(username: 'Zayn Malik', imageURL: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Zayn_Wiki_%28cropped%29.jpg/330px-Zayn_Wiki_%28cropped%29.jpg', friends: 965465,),
  FollowerModel(username: 'Miftah Zaman', imageURL: 'https://popnable.com/images/singers/large/miftah_zaman_bangladesh_top_50_19.jpg', friends: 154565,),
  FollowerModel(username: 'Bass Baba Sumon', imageURL: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Bassbaba_Sumon_RockNation_VI.jpg/330px-Bassbaba_Sumon_RockNation_VI.jpg', friends: 9261436515,),
  FollowerModel(username: 'Raef al Hasan Rafa', imageURL: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Rafa_at_TSC_DU.jpg/330px-Rafa_at_TSC_DU.jpg', friends: 856546,),
  FollowerModel(username: 'A. R. Rahman', imageURL: 'https://upload.wikimedia.org/wikipedia/commons/6/66/AR_Rahman_2021.png', friends: 54645,),
  FollowerModel(username: 'Cristiano Ronaldo', imageURL: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Cristiano_Ronaldo_2018.jpg/330px-Cristiano_Ronaldo_2018.jpg', friends: 1331454,),
  FollowerModel(username: 'Lionel Andrez Messi', imageURL: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Lionel_Messi_20180626.jpg/330px-Lionel_Messi_20180626.jpg', friends: 23256413213,),
];

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
          'Follower',
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
      body: Align(
          alignment: Alignment.centerLeft,
          child: ListView.builder(
              itemCount: followermodel.length,
              itemBuilder: (BuildContext context, int index){
                return Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: MediaQuery.of(context).size.height/10,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                          NetworkImage('${followermodel[index].imageURL}'),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(
                              text: '${followermodel[index].username}\n',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(21, 21, 21, 1),
                              ),
                              children: [
                                TextSpan(
                                    text: 'Friends: ${followermodel[index].friends}',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(21, 21, 21, .6),
                                    )
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                );
              },
          ),
        ),
    );
  }
}

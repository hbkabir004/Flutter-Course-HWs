import 'package:Profile_Page/editPage.dart';
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
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditPage(),
                  ),
                );
              },
              child: Padding(
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
                    color: Colors.transparent,
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
            ),
          ]),
      // extendBodyBehindAppBar: true,
      backgroundColor: Color.fromRGBO(246, 246, 246, .6),
      body: Align(
        alignment: Alignment.center,
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Profile Image And Name Container

                Container(
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 6,
                        width: MediaQuery.of(context).size.width / 3.5,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/me.png"),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Color.fromRGBO(34, 36, 45, 1),
                              width: 3,
                              style: BorderStyle.solid,
                            )),
                      ),

                      //profile name and address column
                      Container(
                        height: MediaQuery.of(context).size.height / 6,
                        width: MediaQuery.of(context).size.width / 1.7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 77),
                              child: Text(
                                'Md. Hasanul Banna Khan Abir',
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(249, 248, 240, 1),
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Text(
                              'North Western University, Khulna.',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                color: Color.fromRGBO(249, 248, 240, 1),
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //Bio Container

                Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height / 5,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Text and icon container
                      Container(
                        height: MediaQuery.of(context).size.height / 8,
                        width: MediaQuery.of(context).size.width / 7,
                        margin: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width / 1.3,
                          top: MediaQuery.of(context).size.height / 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Bio",
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Color.fromRGBO(248, 249, 250, .5),
                              ),
                            ),
                            Icon(
                              Icons.create_rounded,
                              color: Color.fromRGBO(248, 249, 250, .5),
                              size: 18,
                            ),
                          ],
                        ),
                      ),

                      //Text Container

                      Container(
                        height: MediaQuery.of(context).size.height / 4.6,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: Text(
                          '''Md. Hasanul Banna Khan Abir, also known as Aungstrome Abir. Studying BSc. in CSE in the North Western University. Currently living in 25/b, Hazi Mohsin Road, Khulna, Bangladesh.
                          ''',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            color: Color.fromRGBO(249, 247, 245, .5),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),

                      //Wrap widget container
//----------------------- Day-12 -----------------------------------------------
                      /*Container(
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width,
                        child: Wrap(
                          children: [
                            Container(),
                            Container(),
                            Container(),
                            Container(),

                          ],
                        ),
                      ),*/
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

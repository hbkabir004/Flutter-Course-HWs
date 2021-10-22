import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Profile_Page/splashScreen.dart';
import 'package:Profile_Page/profilePage.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key key}) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 120,
        leading: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 6,
            horizontal: 10,
          ),
          child: Container(
            height: MediaQuery.of(context).size.height / 10,
            width: MediaQuery.of(context).size.width / 10,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: Color.fromRGBO(201, 204, 212, 1),
                width: 3,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            child: FlatButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SplashScreen(),
                  ),
                );
              },
              icon: Icon(
                Icons.arrow_back,
                color: Color.fromRGBO(0, 0, 0, .5),
                size: 15,
              ),
              label: Text(
                "Back",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        title: Text(
          "Edit Page",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 6,
            ),
            child: Container(
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width / 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Color.fromRGBO(201, 204, 212, 1),
                  width: 3,
                  style: BorderStyle.solid,
                ),
                color: Colors.transparent,
              ),
              child: FlatButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.save_outlined,
                  color: Color.fromRGBO(0, 0, 0, .5),
                  size: 15,
                ),
                label: Text(
                  "Save",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      // extendBodyBehindAppBar: true,
      body: Center(
        child: Container(
            height: 600,
            width: 450,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 5,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Editing..."),
                SizedBox(
                  width: 10,
                ),
              ],
            )),
      ),
    );
  }
}

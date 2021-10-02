import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ButtonColumnRow extends StatefulWidget {
  const ButtonColumnRow({Key key}) : super(key: key);

  @override
  _ButtonColumnRowState createState() => _ButtonColumnRowState();
}

class _ButtonColumnRowState extends State<ButtonColumnRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Profile Page",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
            color: Colors.purpleAccent[100],
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {},
          child: Container(
            height: 25,
            width: 50,
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 3,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text("Home"),
            ),
          ),
        ),
        leadingWidth: 60,
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              height: 25,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                  style: BorderStyle.solid,
                ),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text("Setting"),
              ),
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: 450,
          width: 350,
          margin: EdgeInsets.only(
            top: 70,
          ),
          decoration: BoxDecoration(
            color: Colors.blueAccent[100],
            border: Border.all(
              color: Colors.black54,
              width: 5,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Container(
                height: 80,
                width: 80,
                margin: EdgeInsets.only(
                  top: 25,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.deepPurpleAccent,
                    width: 3,
                    style: BorderStyle.solid,
                  ),
                  color: Colors.grey,
                ),
                child: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.black,
                  size: 70,
                ),
              ),
              Container(
                height: 30,
                width: 120,
                margin: EdgeInsets.only(
                  top: 15,
                ),
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Select Image"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

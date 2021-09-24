import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter_application_row_column/main.dart';

class ButtonRow extends StatefulWidget {
  const ButtonRow({Key key}) : super(key: key);

  @override
  _ContainerRow createState() => _ContainerRow();
}

class _ContainerRow extends State<ButtonRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: Md. Hasanul Banna Khan Abir'),
            SizedBox(height: 5),
            Text('Address: 25/b, Hazi Mohsin Road, Khulna.'),
            SizedBox(height: 5),
            Text('BSc. in CSE (Studying)'),
            SizedBox(height: 5),
            Text('North Western University'),
            SizedBox(height: 5),
            Text('Khulna'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Dhaka'),
                SizedBox(width: 5),
                Text('Khulna'),
                SizedBox(width: 5),
                Text('Chittagong'),
                SizedBox(width: 5),
                Text('Rajshashi'),
                SizedBox(width: 5),
              ],
            )
          ],
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';

class BMICC extends StatelessWidget {
  // const BMICC({Key? key}) : super(key: key);
  final bool Gender;
  final double res;
  final int Age;
  BMICC({required this.Age, required this.Gender, required this.res});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        // leading: IconButton(
        //icon: Icon(
        //Icons.keyboard_arrow_left_rounded,
        // color: Colors.pink,
        //),
        //onPressed: () {
        // Navigator.pop(context);
        // },
        // ),
        title: Text(
          'All Details ',
          style: TextStyle(
            color: Colors.pink,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender:${Gender ? 'Male' : 'Female'}',
              style: TextStyle(
                color: Colors.pink,
                fontSize: 20.00,
              ),
            ),
            Text(
              'Age:$Age ',
              style: TextStyle(
                color: Colors.pink,
                fontSize: 20.00,
              ),
            ),
            Text(
              'REsult: $res',
              style: TextStyle(
                color: Colors.pink,
                fontSize: 20.00,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

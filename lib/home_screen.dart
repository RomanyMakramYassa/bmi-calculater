import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'gooooooooo',
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('vbvbvb');
            },
            icon: Icon(
              Icons.notification_important,
            ),
          ),
          IconButton(
            onPressed: () {
              print('sleeeep');
            },
            icon: Icon(
              Icons.search,
            ),
          ),
        ],
        centerTitle: true,
      ),
      //body: SafeArea(
      //child: Text(
      //'ffffffff',
      //),
      //),

      body: Container(
        color: Colors.blueGrey,
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                height: 100.00,
                child: Text(
                  '1111111111111',
                  style: TextStyle(
                    color: Colors.black,
                    backgroundColor: Colors.red,
                    fontSize: 30.00,
                  ),
                ),
              ),
            ),
            Container(
              height: 100.00,
              color: Colors.blue,
              child: Text(
                '22222222222222222222',
                style: TextStyle(
                  color: Colors.black,
                  backgroundColor: Colors.red,
                  fontSize: 30.00,
                ),
              ),
            ),
            Container(
              height: 100.00,
              color: Colors.blue,
              child: Text(
                '3333333333333333',
                style: TextStyle(
                  color: Colors.black,
                  backgroundColor: Colors.red,
                  fontSize: 30.00,
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 100.00,
                color: Colors.blue,
                child: Text(
                  '444444444444444444',
                  style: TextStyle(
                    color: Colors.black,
                    backgroundColor: Colors.red,
                    fontSize: 30.00,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

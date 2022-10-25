import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/BmI.dart';
import 'package:untitled/home_screen.dart';
import 'package:untitled/minusadd.dart';
import 'package:untitled/newsTestapp/NewsApp.dart';
import 'package:untitled/users.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backwardsCompatibility: false,
          backgroundColor: Colors.black,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.black,
            systemNavigationBarColor: Colors.amber,
          ),
          titleTextStyle:
              TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
          iconTheme: IconThemeData(color: Colors.pink),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Colors.pink,
            type: BottomNavigationBarType.fixed),
      ),
      home: BMI(),
    );
  }
}

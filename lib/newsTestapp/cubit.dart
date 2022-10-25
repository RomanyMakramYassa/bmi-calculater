import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/newsTestapp/busness.dart';
import 'package:untitled/newsTestapp/science.dart';
import 'package:untitled/newsTestapp/settings.dart';
import 'package:untitled/newsTestapp/sport.dart';
import 'package:untitled/newsTestapp/states.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(NewsIntialState());
  static NewsCubit get(context) => BlocProvider.of(context);
  List<Widget> Screen = [
    Business(),
    Sport(),
    Science(),
    Setting(),
  ];
  int Curentindex = 0;
  List<BottomNavigationBarItem> BotonItem = [
    BottomNavigationBarItem(
        icon: Icon(Icons.business_sharp), label: 'Business'),
    BottomNavigationBarItem(icon: Icon(Icons.sports_baseball), label: 'Sport'),
    BottomNavigationBarItem(icon: Icon(Icons.science), label: 'Science'),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
  ];
  void Changeindex(int index) {
    Curentindex = index;
    emit(NewsBottonNavState());
  }
}

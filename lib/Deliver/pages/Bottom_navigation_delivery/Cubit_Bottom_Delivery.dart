import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../Delivery_homepage.dart';
import '../location_&chose_offer/location.dart';
import '../setting_de/Setting.dart';
import 'States_Bottom_Delivery.dart';



class Bottom_Cubit_Delivery extends Cubit<Bottom_Delivery_States>{
  Bottom_Cubit_Delivery() : super(AppInitalState());

  static Bottom_Cubit_Delivery get(context) => BlocProvider.of(context);

  int currentindex=0;

  List<Widget> Screen =
  [
    delivery_homepage(),
    location(),
    setting_de()
  ];

  // List<String> titles =
  // [
  //   "New Task",
  //   "Done Task",
  //   "archive Task",
  // ];

  void changeindex (int index)
  {
    currentindex=index;
    emit(AppChangeBottomNavigationBarState());
  }
}
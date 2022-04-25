import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Cubit_Create_order_seller/create order page.dart';
import '../homepage.dart';
import '../setting/Setting.dart';
import 'States_Bottom_seller.dart';



class Bottom_Cubit_seller extends Cubit<Bottom_seller_States>{
  Bottom_Cubit_seller() : super(AppInitalState());

  static Bottom_Cubit_seller get(context) => BlocProvider.of(context);

  int currentindex=0;

  List<Widget> Screen =
  [
    home2(),
    order(),
    setting(),
  ];

  List<String> titles =
  [
    "New Task",
    "Done Task",
    "archive Task",
  ];

  void changeindex (int index)
  {
    currentindex=index;
    emit(AppChangeBottomNavigationBarState());
  }
}
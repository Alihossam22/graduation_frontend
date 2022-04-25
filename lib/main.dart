import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:delivery/seller/pages/Cubit_Create_order_seller/create%20order%20page.dart';
import 'package:flutter/material.dart';
import 'package:delivery/Deliver/pages/Bottom_navigation_delivery/mainofdelivery.dart';
import 'package:delivery/select_seller_or_delivery/seller_or_delivery_shape.dart';
import 'package:delivery/seller/login_and_signup_shape_se.dart';
import 'package:delivery/seller/pages/Bottom_navigation_seller/mainofseller.dart';
import 'package:delivery/splash_screen.dart';

import 'Deliver/login_and_signup_shape.dart';
import 'Deliver/pages/Delivery_homepage.dart';
import 'Deliver/pages/search_Delivery.dart';


void main() {
  runApp(const MyApp());

  Bloc.observer = MyBlocObserver();
}

class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('onError -- ${bloc.runtimeType}, $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('onClose -- ${bloc.runtimeType}');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: splashscreen(),
      //   splashscreen   search    delivery_homepage  order    mainofdelivery
    );
  }
}

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {


  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async{
    var duration =Duration(seconds: 6);
    return Timer(duration, route);
  }

  route(){
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context)=> seller_or_delivery_shape()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 231, 222, 1),
      // ignore: unnecessary_const
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/Untitled.png',
                height: 300,
                width: 300,
              ),
               SizedBox(
                height: 20,
              ),
              CircularProgressIndicator(
                backgroundColor: Color(0XFF64314D),
                strokeWidth: 1,

              )
            ],
          )),
    );
  }
}







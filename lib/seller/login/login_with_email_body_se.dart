

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../Cubit_login_signup_se/Cubit_login_sigunp_se.dart';
import '../Cubit_login_signup_se/State_login_sigunp_se.dart';
import '../pages/Bottom_navigation_seller/mainofseller.dart';
import '../signup_se/singup_with_email_shape_se.dart';



class login_with_email_body_se extends StatelessWidget {
  var visable = Icon(
    Icons.visibility,
    color: Color(0xff4c5166),
  );

  var visableoff = Icon(
    Icons.visibility_off,
    color: Color(0xff4c5166),
  );
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => passwordCubit(),
      child: BlocConsumer<passwordCubit ,PasswordState>(
          listener: (context, state) { },
          builder: (context, state){
            return  Padding(
              padding: EdgeInsets.all(30),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin: EdgeInsets.all(0.0),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "E-Mail",
                            hintText: "Enter E-Mail",
                            hintStyle: TextStyle(fontSize: 20,color: Colors.white,),
                            labelStyle: TextStyle(fontSize: 30,color: Colors.white,),
                            prefixIcon: Icon(Icons.alternate_email)),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 20, 20),
                      child: TextField(
                        obscureText: passwordCubit.get(context).sec,

                        decoration: InputDecoration(
                          labelText: "password",
                          hintText: "Enter password",
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            onPressed: () {
                              passwordCubit.get(context).visableof();
                            },
                            icon: passwordCubit.get(context).sec ? visableoff : visable,


                          ),
                          hintStyle: TextStyle(fontSize: 20,color: Colors.white,),
                          labelStyle: TextStyle(fontSize: 30,color: Colors.white,),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: RaisedButton(
                                color: Color.fromRGBO(234, 231, 222, 1),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const mainofseller()));                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                child: Text('Log in ',
                                    style: TextStyle(
                                        color: Color.fromRGBO(100, 50, 77, 1),
                                        fontSize: 15))),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                      height: 20.0,
                    ),
                    FlatButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('forget');
                        },
                        child: Text(
                          'Forgetyour password',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: RaisedButton(
                                color: Color.fromRGBO(238, 75, 42, 1),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> singup_with_email_shape_se()));
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                child: Text('Sign up ',
                                    style: TextStyle(
                                        color: Color.fromRGBO(234, 231, 222, 1),
                                        fontSize: 15))),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );

          }


      ),
    );
  }
}






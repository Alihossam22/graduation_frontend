import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Cubit_login_signup_Deli/Cubit_login_signup_deliv.dart';
import '../Cubit_login_signup_Deli/States_login_signup_deliv.dart';
import '../login/login_with_email_shape.dart';
import '../pages/Bottom_navigation_delivery/mainofdelivery.dart';


class singup_with_email_body extends StatelessWidget {
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
      create: (BuildContext context) => password_De_Cubit(),
      child: BlocConsumer<password_De_Cubit ,Password_De_State>(
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
                            labelText: "Your Name",
                            hintText: "Enter Full Name",
                            hintStyle: TextStyle(fontSize: 20,color: Colors.white,),
                            labelStyle: TextStyle(fontSize: 30,color: Colors.white,),
                            prefixIcon: Icon(Icons.person_outline)),
                        keyboardType: TextInputType.text,
                      ),
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
                        obscureText: password_De_Cubit.get(context).sec,

                        decoration: InputDecoration(
                          labelText: "password",
                          hintText: "Enter password",
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            onPressed: () {
                              password_De_Cubit.get(context).visableof();
                            },
                            icon: password_De_Cubit.get(context).sec ? visableoff : visable,


                          ),
                          hintStyle: TextStyle(fontSize: 20,color: Colors.white,),
                          labelStyle: TextStyle(fontSize: 30,color: Colors.white,),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 20, 20),
                      child: TextField(
                        obscureText: password_De_Cubit.get(context).sec,

                        decoration: InputDecoration(
                          labelText: "Confirm password",
                          hintText: "Enter password",
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            onPressed: () {
                              password_De_Cubit.get(context).visableof();
                            },
                            icon: password_De_Cubit.get(context).sec ? visableoff : visable,


                          ),
                          hintStyle: TextStyle(fontSize: 20,color: Colors.white,),
                          labelStyle: TextStyle(fontSize: 30,color: Colors.white,),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(0.0),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Phone Number",
                            hintText: "Enter Phone Number",
                            hintStyle: TextStyle(fontSize: 20,color: Colors.white,),
                            labelStyle: TextStyle(fontSize: 30,color: Colors.white,),
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Colors.black,
                            )),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
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
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const mainofdelivery()));
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                child: Text('Signup ',
                                    style: TextStyle(
                                        color: Color.fromRGBO(100, 50, 77, 1),
                                        fontSize: 30))),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),Container(
                        child:Column(
                          children: [

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly  ,
                              children: [
                                buildare(),
                                buildlogin(context),

                              ],

                            )
                          ],
                        )
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
Widget  buildlogin(BuildContext context){
  return  Container(
    child:Column(
      children:
      <Widget>[
        SizedBox(
          height: 50,
          width: 100,
          child: RaisedButton(
              color: Color.fromRGBO(238, 75, 42, 1),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>login_with_email_shape()));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Text('Log in ',
                  style: TextStyle(
                      color: Color.fromRGBO(234, 231, 222, 1),
                      fontSize: 20))),
        )
      ],
    ),
  );
}
Widget  buildare(){
  return Container(
      child:Column(children: [

        Text('Are you have an account?',style: TextStyle(
          color: Colors.white,
          fontSize:   20,

        ), )

      ],)
  );
}




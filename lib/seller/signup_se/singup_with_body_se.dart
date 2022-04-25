
import 'package:flutter/material.dart';
import 'package:delivery/Deliver/signup/singup_with_email_shape.dart';
import 'package:delivery/seller/signup_se/singup_with_email_shape_se.dart';

class singup_with_body_se extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: RaisedButton(
                        color: const Color.fromRGBO(234, 231, 222, 1),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Center(
                              child:
                              Icon(Icons.apple,size: 30,),
                            ),
                            SizedBox(
                              width: 25.0,
                            ),
                            Center(
                              child: Text(
                                'continue with Apple',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: RaisedButton(
                        color: const Color.fromRGBO(234, 231, 222, 1),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Center(
                              child:
                              Icon(Icons.facebook,size: 30,),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Center(
                              child: Text(
                                'continue with faceBook',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: RaisedButton(
                        color: const Color.fromRGBO(234, 231, 222, 1),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Center(
                              child:
                              Icon(Icons.alternate_email,size: 30,),
                            ),
                            SizedBox(
                              width: 25.0,
                            ),
                            Center(
                              child: Text(
                                'continue with Gmail',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: RaisedButton(
                        color: const Color.fromRGBO(234, 231, 222, 1),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> singup_with_email_shape_se()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Center(
                              child:
                              Icon(Icons.email,size: 30,),
                            ),
                            SizedBox(
                              width: 25.0,
                            ),
                            Center(
                              child: Text(
                                'continue with E-mail',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

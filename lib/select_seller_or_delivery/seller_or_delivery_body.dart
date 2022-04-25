import 'package:flutter/material.dart';

import '../Deliver/login_and_signup_shape.dart';
import '../seller/login_and_signup_shape_se.dart';


class seller_or_delivery_body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 20.0,
            ),
            Container(
              margin: const EdgeInsets.all(20.0),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 70,
                    width: 250,
                    child: RaisedButton(
                        color: const Color.fromRGBO(238, 75, 42, 1),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> login_and_sigup_shape_se()));

                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: const Text('Seller ',
                            style: TextStyle(
                                color: Color.fromRGBO(234, 231, 222, 1),
                                fontSize: 30))),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 70,
                    width: 250,
                    child: RaisedButton(
                        color: const Color.fromRGBO(234, 231, 222, 1),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> login_and_sigup_shape()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: const Text('Delivery ',
                            style: TextStyle(
                                color: Color.fromRGBO(100, 50, 77, 1),
                                fontSize: 30))),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}

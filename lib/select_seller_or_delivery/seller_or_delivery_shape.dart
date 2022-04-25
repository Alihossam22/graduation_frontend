
import 'package:flutter/material.dart';
import 'package:delivery/select_seller_or_delivery/seller_or_delivery_body.dart';

import '../component/header.dart';



class seller_or_delivery_shape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Color.fromRGBO(234, 231, 222, 1),
            Color.fromRGBO(234, 231, 222, 1),
            Color.fromRGBO(234, 231, 222, 1),
          ]),
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 100,
            ),
            Header(),
            const SizedBox(
              height: 100,
            ),
            Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(100, 50, 77, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      )),
                  child: seller_or_delivery_body(),
                ))
          ],
        ),
      ),
    );
  }

// log1() {}
}

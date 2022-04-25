import 'dart:html';

import 'package:flutter/material.dart';



class search extends StatelessWidget {
  const search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            height:50,
            width: 250,
            child: const TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0XFF64314D), width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0XFF64314D), width: 2.0),
                ),
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
                hintText: 'Order ID',
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
         // TextButton("Cancel",style: TextStyle(color: Colors.blue),),
          TextButton(onPressed: (){
            Navigator.pop(context);
          },
              child: Text("Cancel",style: TextStyle(color: Colors.blue),)
          )
        ],
      ),
    );
  }
}

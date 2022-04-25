
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:delivery/seller/pages/OrderDetails.dart';

class home2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFEAE7DE),
      body: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const Center(
                child: Text("Hi Ali", style: TextStyle(fontSize: 20),),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: 250,
                child: const TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(0XFF64314D), width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(0XFF64314D), width: 2.0),
                    ),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Order ID',
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(Icons.notifications, size: 30,),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(40, 0, 5, 0),
                child: Chip(
                  labelPadding: EdgeInsets.all(6.0),
                  label: Text(
                    "      ALL      ", style: TextStyle(color: Colors.white),),
                  backgroundColor: Color(0XFF64314D),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Chip(
                  labelPadding: EdgeInsets.all(6.0),
                  label: Text(
                    "   Delivery   ", style: TextStyle(color: Colors.white),),
                  backgroundColor: Color(0XFF64314D),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Chip(
                  labelPadding: EdgeInsets.all(6.0),
                  label: Text(
                    "   Pending   ", style: TextStyle(color: Colors.white),),
                  backgroundColor: Color(0XFF64314D),
                ),
              ),

            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Expanded(
            child: ListView.separated(

              itemBuilder: (context, index) => buildListItem( context),
              separatorBuilder: (context, index) => SizedBox(height: 12,),
              itemCount:10,
              scrollDirection: Axis.vertical,

            ),
          ),
        ],
      ),
    );
  }

  Widget buildListItem(BuildContext context) => GestureDetector(
    onTap: () {
       Navigator.push(
            context ,
           MaterialPageRoute(builder: (context) =>  orderdetails())
       );

    },
    child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Container(
        height: 150,
        width: 280,

        decoration: const BoxDecoration(
            color: Color(0XFF64314D),
            borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        child: Row(
          children: [
            const Expanded(
                flex: 1,
                child: Icon(Icons.shop, size: 80,)
            ),
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
                      child: Text("Gucci  Bag", style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Icon(Icons.panorama_fish_eye_outlined),
                        Text("Personal"),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.alarm),
                        Text("2/3/2022"),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 110, 0),
                      child: Text("Price: 600LE", style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 55, 0),
                      child: Text("Commision: 600LE", style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),),
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    ),
  );
}



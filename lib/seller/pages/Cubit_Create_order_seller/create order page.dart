import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Bottom_navigation_seller/mainofseller.dart';
import 'Cubit_create_order_seller.dart';
import 'States_create_order_seller.dart';


class order extends StatelessWidget {
  const order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (BuildContext context)=> create_order_seller_Cubit(),
      child: BlocConsumer<create_order_seller_Cubit , create_order_seller_States>(
        listener: ( context,  state) {},
        builder: ( context, state) {
          return Scaffold(
              body: Container(
                color: const Color(0XFFEAE7DE),
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Center(
                          child: CircleAvatar(
                            backgroundColor: Color(0XFF64314D),
                            child: Icon(Icons.image ,color: Colors.white,size: 40,),
                            radius: 50,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Center(
                      child: Text("upload image"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                      child:TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          labelText: "product name",
                          hintText: "enter your name",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                      child:TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          labelText: "Location",
                          hintText: "From",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                      child:TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          labelText: "Location",
                          hintText: "To",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                      child:TextFormField(
                        keyboardType: TextInputType.datetime,
                        decoration: const InputDecoration(
                          labelText: "Delivery Time",
                          hintText: "DD/MM/YYYY",
                        ),
                      ),
                      //keyboardType: TextInputType.number,

                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                      child:TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          labelText: "Price",
                          hintText: "500 L.E",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                      child:TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          labelText: "Commision",
                          hintText: "100 L.E",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                      child:TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          labelText: "Note",
                          hintText: "phone number is 015332984",
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 15, 0),
                      child:Text("Type of Delivery"),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                      child:Container(
                        height: 100,
                        width: 300,
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
                              child: Chip(
                                labelPadding: EdgeInsets.all(6.0),
                                avatar: CircleAvatar(
                                  child: Icon(Icons.directions_bike_outlined),
                                  backgroundColor: Colors.white,
                                ),
                                label: Text("bike",style: TextStyle(color: Colors.white)),
                                backgroundColor: Color(0XFF64314D),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                              child: Chip(
                                labelPadding: EdgeInsets.all(6.0),
                                avatar: CircleAvatar(
                                  child: Icon(Icons.directions_car),
                                  backgroundColor: Colors.white,
                                ),
                                label: Text("Car",style: TextStyle(color: Colors.white)),
                                backgroundColor: Color(0XFF64314D),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: Chip(
                                labelPadding: EdgeInsets.all(6.0),
                                avatar: CircleAvatar(
                                  child: Icon(Icons.person),
                                  backgroundColor: Colors.white,
                                ),
                                label: Text("personal",style: TextStyle(color: Colors.white),),
                                backgroundColor: Color(0XFF64314D),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 15, 0),
                      child:Text("Category"),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                      child:Container(
                        height: 100,
                        width: 300,
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
                              child: Chip(
                                labelPadding: EdgeInsets.all(4.0),
                                avatar: CircleAvatar(
                                  child: Icon(Icons.watch),
                                  backgroundColor: Colors.white,
                                ),
                                label: Text("Watch",style: TextStyle(color: Colors.white)),
                                backgroundColor: Color(0XFF64314D),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                              child: Chip(
                                labelPadding: EdgeInsets.all(6.0),
                                avatar: CircleAvatar(
                                  child: Icon(Icons.shopping_bag),
                                  backgroundColor: Colors.white,
                                ),
                                label: Text("Bag",style: TextStyle(color: Colors.white)),
                                backgroundColor: Color(0XFF64314D),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: Chip(
                                labelPadding: EdgeInsets.all(8.0),
                                avatar: CircleAvatar(
                                  child: Icon(Icons.phone_iphone),
                                  backgroundColor: Colors.white,
                                ),
                                label: Text("mobile",style: TextStyle(color: Colors.white)),
                                backgroundColor: Color(0XFF64314D),
                              ),
                            ),
                          ],
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                      child:GestureDetector(
                          onTap: (){},

                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(
                                70,
                                0,
                                70,
                                5
                            ),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> mainofseller()));
                              },
                              child: Container(
                                  height: 50,
                                  width: 35,
                                  color: const Color(0XFF64314D),
                                  child: const Center(
                                    child: Text("Save",style: TextStyle(color: Colors.white, fontSize: 20),),
                                  )
                              ),
                            ),
                          )
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
          );
        },
      ),
    );
  }
}


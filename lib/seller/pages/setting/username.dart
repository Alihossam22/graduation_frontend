import 'package:delivery/seller/pages/setting/Cubit_setting_seller/States_setting_seller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Bottom_navigation_seller/mainofseller.dart';
import 'Cubit_setting_seller/Cubit_setting_seller.dart';


class username extends StatelessWidget {
  const username({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (BuildContext context)=> username_seller_Cubit(),
      child: BlocConsumer<username_seller_Cubit ,  username_seller_States>(
        listener: ( context, state) {  },
        builder: ( context,  state) {
          return Scaffold(
            backgroundColor: const Color(0XFFEAE7DE),
            body: Column(
              children: [
                const SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 320, 0),
                  child: IconButton(onPressed: (){
                    Navigator.pop(context);
                  },
                      icon: const Icon(Icons.arrow_back,size: 40,)),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 150, 10),
                  child: Text("new username",style: TextStyle(fontSize: 30,color: Color(0XFF64314D)),),
                ),
                const TextField(
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
                    //prefixIcon: Icon(Icons.search),
                    hintText: 'Enter new user name',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>mainofseller()));
                      },
                      child: Container(
                        height: 60,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0XFF64314D),
                        ),
                        child: const Center(
                          child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 25),),
                        ),
                      ),
                    ),
                  ),

              ],
            ),
          );
        },
      ),
    );
  }
}



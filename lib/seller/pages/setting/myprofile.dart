import 'package:delivery/seller/pages/setting/Cubit_setting_seller/States_setting_seller.dart';
import 'package:flutter/material.dart';
import 'package:delivery/seller/pages/setting/password.dart';
import 'package:delivery/seller/pages/setting/phone_number.dart';
import 'package:delivery/seller/pages/setting/username.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Cubit_setting_seller/Cubit_setting_seller.dart';


class myprofile extends StatelessWidget {
  const myprofile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => myprofile_seller_Cubit(),
      child:BlocConsumer<myprofile_seller_Cubit , myprofile_seller_States>(
         listener: ( context, state) {  },
         builder: ( context,  state) {
           return Scaffold(
             backgroundColor: const Color(0XFFEAE7DE),
             body: Container(
               // color: Colors.blue,
               child: Column(
                 children: [
                   const SizedBox(
                     height: 50,
                   ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(0,0,320,0),
                     child: IconButton(onPressed: (){
                       Navigator.pop(context);
                     }, icon: const Icon(Icons.arrow_back,size: 50,)),
                   ),
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
                           radius: 60,
                         ),
                       ),
                     ],
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   const Text("change image",style: TextStyle(fontSize: 20),),
                   const SizedBox(
                     height: 20,
                   ),
                   const Padding(
                     padding: EdgeInsets.fromLTRB(0,0,190,0),
                     child: Text("Username",style: TextStyle(fontSize: 30),),
                   ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(30,0,0,0),
                     child: Row(
                       children: [
                         const Text("ali hossam",style: TextStyle(fontSize: 20),),
                         const SizedBox(
                           width: 180,
                         ),
                         IconButton(onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>const username()));
                         }, icon: const Icon(Icons.edit))
                       ],
                     ),

                   ),
                   const Padding(
                     padding: EdgeInsets.fromLTRB(0, 0, 250, 0),
                     child: Text("Email",style: TextStyle(fontSize: 30),),


                   ),
                   const Padding(
                     padding: EdgeInsets.fromLTRB(0, 5, 130, 0),
                     child: Text("ali.hossam.33@gmail.com",style: TextStyle(fontSize: 15),),


                   ),
                   const Padding(
                     padding: EdgeInsets.fromLTRB(0,10,135,0),
                     child: Text("phone number",style: TextStyle(fontSize: 30),),
                   ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(30,0,0,0),
                     child: Row(
                       children: [
                         const Text("0101765314525",style: TextStyle(fontSize: 20),),
                         const SizedBox(
                           width: 125,
                         ),
                         IconButton(onPressed: (){

                           Navigator.push(context, MaterialPageRoute(builder: (context)=>const phone_number()));

                         }, icon: const Icon(Icons.edit))
                       ],
                     ),

                   ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(20,10,0,0),
                     child: Row(
                       children: [
                         const Text("Password",style: TextStyle(fontSize: 30),),
                         const SizedBox(
                           width: 145,
                         ),
                         IconButton(onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>const password()));
                         }, icon: const Icon(Icons.edit))
                       ],
                     ),

                   ),

                 ],
               ),
             ),
           );
         },
       ),
    );
  }
}

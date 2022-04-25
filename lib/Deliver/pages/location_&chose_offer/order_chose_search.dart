import 'package:delivery/Deliver/pages/Bottom_navigation_delivery/mainofdelivery.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Delivery_orderDetails.dart';
import 'Cubit_location_&_chose_offer.dart';
import 'States_location_&_chose_offer.dart';

// this screen show after user enter the location

class order_chose_search extends StatelessWidget {
  const order_chose_search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return BlocProvider(
      create: (BuildContext context) =>order_chose_search_Cubit(),
      child: BlocConsumer<order_chose_search_Cubit , order_chose_search_States >(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, Object? state) {
          return Scaffold(
            body: Column(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(50, 0, 0,0 ),
                  child: IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>mainofdelivery()));
                  },icon:Icon(Icons.arrow_back)),
                ),
                ListView.separated(
                  shrinkWrap: true ,
                  itemBuilder:(context, index) => buildListIteam(context) ,
                  separatorBuilder:(context, index) =>SizedBox(height: 12,),
                  itemCount: 20,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                ),

              ],
            ),
          );
        },
      ),
    );
  }
  Widget buildListIteam (BuildContext context)=>GestureDetector(

    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>delivery_orderdetails()));
    },
    child: Padding(
      padding: const EdgeInsets.fromLTRB(10,0, 10, 0),
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
                child: Icon(Icons.shop , size: 80,)
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
                      child: Text("Gucci  Bag",style: TextStyle(color: Colors.white , fontSize: 20 ,fontWeight: FontWeight.bold),),
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
                      child: Text("Price: 600LE",style: TextStyle(color: Colors.white , fontSize:15, fontWeight: FontWeight.bold),),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 55, 0),
                      child: Text("Commision: 600LE",style: TextStyle(color: Colors.white , fontSize: 17, fontWeight: FontWeight.bold),),
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

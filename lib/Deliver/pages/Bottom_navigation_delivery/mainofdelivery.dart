import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../search_Delivery.dart';
import 'Cubit_Bottom_Delivery.dart';
import 'States_Bottom_Delivery.dart';



class mainofdelivery extends StatelessWidget {
  const mainofdelivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Bottom_Cubit_Delivery(),
      child: BlocConsumer<Bottom_Cubit_Delivery , Bottom_Delivery_States>(
        listener: (BuildContext context , Bottom_Delivery_States  state){},
        builder: (BuildContext context , Bottom_Delivery_States state){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              //backgroundColor: Colors.green,
              appBar: AppBar(
                title: Text("Hi Ali",style: TextStyle(color:  Color(0XFF64314D),),),
                backgroundColor: Color(0XFFEAE7DE),
                actions: [
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>search()));
                  }, icon: Icon(Icons.search,color:  Color(0XFF64314D),))
                ],
              ),
              body: Bottom_Cubit_Delivery.get(context).Screen[Bottom_Cubit_Delivery.get(context).currentindex],
              //floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add)),
              bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Color(0XFF64314D),
                type: BottomNavigationBarType.fixed,
                currentIndex:Bottom_Cubit_Delivery.get(context).currentindex,
                onTap: (index){
                  Bottom_Cubit_Delivery.get(context).changeindex(index);
                },
                items: <BottomNavigationBarItem> [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home,color: Colors.white,),
                    label: "Home D",
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.add,color: Colors.white,),
                      label: "Location"
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings_sharp,color: Colors.white,),
                    label: "Setting",
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

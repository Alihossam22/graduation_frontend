import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Cubit_Bottom_Seller.dart';
import 'States_Bottom_seller.dart';

class mainofseller extends StatelessWidget {
  const mainofseller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Bottom_Cubit_seller(),
      child: BlocConsumer<Bottom_Cubit_seller , Bottom_seller_States>(
        listener: (BuildContext context , Bottom_seller_States  state){},
        builder: (BuildContext context , Bottom_seller_States state){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
             // backgroundColor:  Color(0XFF64314D),
              // appBar: AppBar(
              //   title: Text(
              //     Bottom_Cubit_seller.get(context).titles[Bottom_Cubit_seller.get(context).currentindex],
              //   ),
              // ),
              body: Bottom_Cubit_seller.get(context).Screen[Bottom_Cubit_seller.get(context).currentindex],
              //floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add)),
              bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Color(0XFF64314D),
                type: BottomNavigationBarType.fixed,
                currentIndex:Bottom_Cubit_seller.get(context).currentindex,
                onTap: (index){
                  Bottom_Cubit_seller.get(context).changeindex(index);
                },
                items: <BottomNavigationBarItem> [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home,color: Colors.white,),
                      label: "Home",
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.add,color: Colors.white,),
                      label: "Create order"
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



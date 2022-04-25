import 'package:flutter/material.dart';

import '../Bottom_navigation_seller/mainofseller.dart';


class review extends StatefulWidget {
  const review({Key? key}) : super(key: key);

  @override
  _reviewState createState() => _reviewState();
}

class _reviewState extends State<review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFEAE7DE),
      body: ListView(
        children: [
            Row(
              children: [
                IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>mainofseller()));
                    }, icon: Icon(Icons.arrow_back)
                ),
                SizedBox(
                  width: 200,
                ),
                Center( child: Text("Review",style: TextStyle(fontSize: 40),))
              ],
            ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            width: 200,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0XFF64314D),
            ),
            child: Row(
              children: [
                Expanded(flex: 1,
                    child: Container(
                      child: const Icon(Icons.person,size: 50,),
                    )
                ),
                const Expanded(flex: 2,
                    child: Text("this seller have good product fvdsfvdsfffffffvv fdsdvsdfvgbvsfd vdfvbsgbvv fdvsdfvs fdbvsgdbvd "
                      ,style: TextStyle(color: Colors.white),
                    )
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            width: 200,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0XFF64314D),
            ),
            child: Row(
              children: [
                Expanded(flex: 1,
                    child: Container(
                      child: const Icon(Icons.person,size: 50,),
                    )
                ),
                const Expanded(flex: 2,
                    child: Text("this seller have good product fvdsfvdsfffffffvv fdsdvsdfvgbvsfd vdfvbsgbvv fdvsdfvs fdbvsgdbvd "
                      ,style: TextStyle(color: Colors.white),
                    )
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            width: 200,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0XFF64314D),
            ),
            child: Row(
              children: [
                Expanded(flex: 1,
                    child: Container(
                      child: const Icon(Icons.person,size: 50,),
                    )
                ),
                const Expanded(flex: 2,
                    child: Text("this seller have good product fvdsfvdsfffffffvv fdsdvsdfvgbvsfd vdfvbsgbvv fdvsdfvs fdbvsgdbvd "
                      ,style: TextStyle(color: Colors.white),
                    )
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            width: 200,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0XFF64314D),
            ),
            child: Row(
              children: [
                Expanded(flex: 1,
                    child: Container(
                      child: const Icon(Icons.person,size: 50,),
                    )
                ),
                const Expanded(flex: 2,
                    child: Text("this seller have good product fvdsfvdsfffffffvv fdsdvsdfvgbvsfd vdfvbsgbvv fdvsdfvs fdbvsgdbvd "
                      ,style: TextStyle(color: Colors.white),
                    )
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            width: 200,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0XFF64314D),
            ),
            child: Row(
              children: [
                Expanded(flex: 1,
                    child: Container(
                      child: const Icon(Icons.person,size: 50,),
                    )
                ),
                const Expanded(flex: 2,
                    child: Text("this seller have good product fvdsfvdsfffffffvv fdsdvsdfvgbvsfd vdfvbsgbvv fdvsdfvs fdbvsgdbvd "
                      ,style: TextStyle(color: Colors.white),
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
